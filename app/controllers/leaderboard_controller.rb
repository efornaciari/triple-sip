class LeaderboardController < ApplicationController
  OFFSET = 8
  def index
<<<<<<< HEAD
    @sippers = Sipper.all_with_best_time
=======
    @sippers_by_title = [
        {
            offset: 0,
            title: 'Elite Eight',
            sippers: Sipper.top(OFFSET)
        },
        {
            offset: OFFSET,
            title: 'Wall of Shame',
            sippers: Sipper.range(a: OFFSET)
        }
    ]
>>>>>>> 60a0e95... fixes
  end
end
