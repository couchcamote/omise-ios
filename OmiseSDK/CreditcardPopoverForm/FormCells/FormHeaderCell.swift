import UIKit

public class FormHeaderCell: UITableViewCell {
    public static let identifier = "FormHeaderCell"
    public static let cellHeight:CGFloat = 64
    @IBOutlet weak var card_visa: UIImageView!
    @IBOutlet weak var card_mastercard: UIImageView!
    @IBOutlet weak var card_jcb: UIImageView!
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var topLineHeight: NSLayoutConstraint!
    @IBOutlet weak var bottomLineHeight: NSLayoutConstraint!
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        topLineHeight.constant = 0.5
        bottomLineHeight.constant = 0.5
    }

    func setCardBrand(cardBrand: CardBrand?) {
        guard let cardBrand = cardBrand else {
            card_visa.alpha = 1.0
            card_mastercard.alpha = 1.0
            card_jcb.alpha = 1.0
            return
        }
        
        switch cardBrand {
        case .Visa:
            card_visa.alpha = 1.0
            card_mastercard.alpha = 0.3
            card_jcb.alpha = 0.3
            break
        case .MasterCard:
            card_visa.alpha = 0.3
            card_mastercard.alpha = 1.0
            card_jcb.alpha = 0.3
            break
        case .JCB:
            card_visa.alpha = 0.3
            card_mastercard.alpha = 0.3
            card_jcb.alpha = 1.0
            break
        default:
            break
        }
    }
    
}