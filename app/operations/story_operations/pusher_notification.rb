module StoryOperations
  module PusherNotification
    def notify_changes
      Pusher.trigger(channel_name, 'notify_changes', {
        message: 'project updated'
      })
    end

    private

    def channel_name
      "project-board-#{model.project_id}"
    end
  end
end
