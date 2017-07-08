class Backoffice::SendMailController < ApplicationController
  def edit
    @admin = Admin.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def create
    begin
      AdminMailer.send_message(current_admin, params[:email_to, :mail_subject, :mail_message]).deliver_now 
      @notify_message = "Email enviado com sucesso!" 
      @notify_flag = "success"
    rescue => exception
      @notify_messag = "Erro ao enviar email"
      @notify_flag = "error"
    end
    
    respond_to do |format|
        format.js
    end
  end
end
