class SeedData < ActiveRecord::Migration[5.2]
  def up
    lottery = Lottery.create(name: 'lottery1')
    contest = lottery.contests.create(name: 'contest1')
    contest.prizes.create(name: 'prize1', meta_data: { test1: 'a', test2: { test2a: 'b' } })
  end
end
