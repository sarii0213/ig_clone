require 'rails_helper'

RSpec.describe UserMailer, type: :mailer do

  describe '#like_post' do
    let(:post) { create(:post) }
    let(:user) { create(:user) }
    let(:mail) { UserMailer.with(user_from: user, user_to: post.user, post: post).like_post }
    it '想定通りのメールが作成されている' do
      expect(mail.subject).to eq "#{user.username}さんがあなたの投稿にいいねしました"
      expect(mail.to).to eq [post.user.email]
      expect(mail.from).to eq ['instaclone@example.com']
      expect(mail.body.encoded).to match("#{user.username}さんがあなたの投稿にいいねしました")
    end
  end
end