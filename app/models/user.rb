class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :applied_jobs
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_attached_file :photo, styles: { medium: "200x200>", thumb: "50x50>", large: '300x300>'}, default_url: "/missing.png"
    validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

    # has_attached_file :resume
    # validates_attachment :resume, content_type: {content_type: /pdf/ }

    # has_attached_file :cover_letter
    # validates_attachment :cover_letter, content_type: {content_type: /pdf/ }
end
