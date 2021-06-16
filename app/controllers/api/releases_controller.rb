module Api
  class ReleasesController < ApplicationController

    def index
      @releases = Release.joins(:creator).left_outer_joins(:adjuncts).where('people.birth_date < ?', Date.today - 18.years)
    end

  end
end