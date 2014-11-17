class Task < ActiveRecord::Base
  belongs_to :user

  def done
    self.done_at = if done_at
                     nil
                   else
                     DateTime.now
                   end
    save!
  end
end
