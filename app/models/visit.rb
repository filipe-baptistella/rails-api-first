class Visit < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true, if: :user_idValid?
  validates :checkin_at, presence: true, if: :checkinValid?
  validates :checkout_at, presence: true, if: :checkoutValid?
  validates :data, presence: true, if: :DateIsValid?
  validates :status, presence: true, if: :statusValid?
  

  def statusValid? 
    if self.status == "PENDENTE" || self.status == "REALIZANDO" || self.status == "REALIZADA"
      return true
    else
      return false
    end
  end

  def user_idValid?
    if User.where(id: self.user_id)
      return true
    end
  end

  def checkinValid?
    ckindate = self.checkin_at
    ckoutdate = self.checkout_at
    if ckindate >= Date.today && ckindate < ckoutdate
      return true
    end 
  end

  def checkoutValid?
    ckindate = self.checkin_at
    ckoutdate = self.checkout_at
    if ckindate < ckoutdate
      return true
    end 
  end

  def DateIsValid?
    visitdate = self.data 
    if Date.today <= visitdate
      return true
    end 
  end

end
