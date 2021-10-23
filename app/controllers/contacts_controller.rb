class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.user_email(@contact).deliver_now
      ContactMailer.admin_email(@contact).deliver_now
      flash[:success] = 'お問い合わせのメールを管理者に送信しました。'
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def contact_params
    params.require(:contact)
          .permit(:name, :email, :content, :submitted, :confirmed)
          .merge(remote_ip: request.remote_ip)
  end
end
