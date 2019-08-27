class FrienshipFacade

  def initialize(user, friend)
    @user = user
    @friend = friend
  end

  def add_friend
    @_friendship = Friendship.new(user_id: user.id, friend_id: friend.id)
  end

end
