class PagesController < ApplicationController
  def index
    if current_user.is_admin
      @invites = User.where(is_admin: false).size
      @test_technical_total = Test.where(kind: 'technical').size
      @test_english_total = Test.where(kind: 'english').size
      render '/pages/_admin_page'
    else
      @technical_solution = Solution.where(user_id: current_user.id, kind: 'technical')[0]
      @english_solution = Solution.where(user_id: current_user.id, kind: 'english')[0]

      @technical_test = Test.where(kind: 'technical', level_id: current_user.level_id).sample
      @english_test = Test.where(kind: 'english', level_id: current_user.level_id).sample
      create_solution
      render '/pages/_user_page'
    end
  end

  private
   def create_solution
      if Solution.where(user_id: current_user.id, kind: @technical_test.kind).size == 0
        Solution.create(user_id: current_user.id, test_id: @technical_test.id, kind: @technical_test.kind)
        @d_none_technical = false
      else
        @d_none_technical = true
      end

      if Solution.where(user_id: current_user.id, kind: @english_test.kind).size == 0
        Solution.create(user_id: current_user.id, test_id: @english_test.id, kind: @english_test.kind)
        @d_none_english = false
      else
        @d_none_english = true
      end
    end
end
