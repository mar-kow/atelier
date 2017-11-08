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


  private
  attr_reader :user
end

