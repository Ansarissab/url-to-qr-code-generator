class Site < ApplicationRecord
  before_save :generate_qr

  private

  def generate_qr
    qrcode = RQRCode::QRCode.new(self.url)
    self.svg = qrcode.as_svg(
      color: '000',
      shape_rendering: 'crispEdges',
      module_size: 11,
      standalone: true,
      use_path: true
    )
  end
end
