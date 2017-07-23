class PdfController < ApplicationController
  def download_pdf
    send_file "#{Rails.root}/app/assets/docs/resume.pdf", type: "application/pdf", x_sendfile: true
  end
end
