class Song < ActiveRecord::Base 
    validates :title, presence: true, uniqueness: true
    validates :released, inclusion: {in: [true, false]}
    validates :artist_name, presence: true
    validates :release_year, numericality: {only_integer: true, less_than_or_equal_to: Time.now.year}, presence: true, if: :released?

             
    # with_options :if => :released? do |song| 
    #     song.validates :release_year, presence: true 
    #     song.validates numericality: {only_integer: true,
    #             less_than_or_equal_to: Date.current.year}
    # end

    # def make_sure_released_is_ok
    #     if released == true
    #         return true
    #     else 
    #     end
    # end

   
end