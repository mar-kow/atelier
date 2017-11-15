class ReservationsHandler

  def initialize(user)
    @user = user
  end

  def take(book)
    return false unless book.can_take?(user)

    if book.available_reservation.present?
      book.available_reservation.update_attributes(status: 'TAKEN')
    else
      book.reservations
    end
  end

  def give_back(book)
    return false unless book.can_give_back?(user)
    ActiveRecord::Base.transaction do
      book.reservations.find_by(status: 'TAKEN').update_attributes(status: 'RETURNED')
      book.next_in_queue.update_attributes(status: 'AVAILABLE') if book.next_in_queue.present?
      end
  end

  private
  attr_reader :user

end
