import UIKit

protocol SettingTableViewCellDelegate: class {
    func cellSettingSwitchValueChanged(cell: SettingTableViewCell, isOn: Bool )
}

class SettingTableViewCell: UITableViewCell {

    // MARK: Outlets
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    // MARK: Properties
    
    weak var delegate: SettingTableViewCellDelegate?
    
    var setting: Setting? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: Custom Methods
    
    func updateViews() {
        
        if let setting = setting {
            
            iconImageView.image = setting.icon
            settingNameLabel.text = setting.name
            settingSwitch.isOn = setting.isOn
            
            backgroundColor = setting.isOn ? .lightGray : .white
            
        } else {
            
            iconImageView.image = nil
            settingNameLabel.text = ""
            settingSwitch.isOn = false
            
            backgroundColor = .white
            
        }
    }
    
    // MARK: Actions
    
    @IBAction func settingSwitchValueChanged(_ sender: Any) {
        
        delegate?.cellSettingSwitchValueChanged(cell: self, isOn: settingSwitch.isOn)
        
    }
    

}
