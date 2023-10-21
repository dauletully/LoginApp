
import UIKit
import SnapKit
class ViewController: UIViewController {

    private var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .blue
        label.font = .boldSystemFont(ofSize: 35)
        return label
    }()

    private lazy var textFieldLogin: UITextField = {
        let login = UITextField()
        login.borderStyle = .roundedRect
        login.textColor = .black
        login.textAlignment = .left
        login.placeholder = "Enter your email"
        login.setLeftIcon(UIImage(named: "userIcon")!)
        return login
    }()

    private lazy var textFieldPassword: UITextField = {
        let password = UITextField()
        password.borderStyle = .roundedRect
        password.textAlignment = .left
        password.placeholder = "Enter password"
        password.isSecureTextEntry = true
        password.setLeftIcon(UIImage(named: "passwordIcon")!)
        return password
    }()

    private lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor(named: "backColor")
        button.setTitleColor(.white, for: .normal)
        shadowButton(button: button)
        return button
    }()

    private lazy var forgetPasswordLable: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.text = "Forget your password?"
        label.font = .boldSystemFont(ofSize: 12)
        return label
    }()

    private lazy var otherConnection: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.text = "or connect with"
        label.font = .boldSystemFont(ofSize: 12)
        return label
    }()

    private lazy var buttonFacebookConnection: UIButton = {
        let button = UIButton(type: .system)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 17
        button.backgroundColor = UIColor(named: "facebookColor")
        button.setTitle("facebook", for: .normal)
        button.setImage(UIImage(named: "facebookIcon"), for: .normal)
        shadowButton(button: button)
        return button
    }()

    private lazy var buttonTwitterConnection: UIButton = {
        var button = UIButton(type: .system)
       // button.setImage(UIImage(named: "facebook"), for: .normal)
        button.setTitle("twitter", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 17
        button.backgroundColor = UIColor(named: "twitterColor")
        shadowButton(button: button)
        return button
    }()

    private lazy var labelSignUp: UILabel = {
        let label = UILabel()
        label.text = "Dont have an account?"
        label.font = .systemFont(ofSize: 12)
        label.textColor = .gray
        return label
    }()
    private lazy var buttonSignUp: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12)
        button.setTitleColor(UIColor.blue, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        loginButton.layer.cornerRadius = 20
        
    }
    
    //MARK: - Setup Views

    private func setupViews(){
        view.addSubview(titleLabel)
        view.addSubview(textFieldLogin)
        view.addSubview(textFieldPassword)
        view.addSubview(loginButton)
        view.addSubview(forgetPasswordLable)
        view.addSubview(otherConnection)
        view.addSubview(buttonFacebookConnection)
        view.addSubview(buttonTwitterConnection)
        view.addSubview(labelSignUp)
        view.addSubview(buttonSignUp)
    }

    private func shadowButton(button: UIButton){
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
    }

    private func setupConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(80)
            make.leading.equalToSuperview().offset(145)
        }
        textFieldLogin.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(80)
            make.leading.equalToSuperview().offset(40)
            make.trailing.equalToSuperview().offset(-39)
            make.height.equalTo(40)
            make.width.equalTo(300)
        }
        textFieldPassword.snp.makeConstraints { make in
            make.top.equalTo(textFieldLogin.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(40)
            make.trailing.equalToSuperview().offset(-39)
            make.height.equalTo(40)
            make.width.equalTo(300)
        }
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(textFieldPassword.snp.bottom).offset(40)
            make.trailing.equalToSuperview().offset(-55)
            make.leading.equalToSuperview().offset(55)
            make.height.equalTo(45)
        }
        forgetPasswordLable.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(16)
            make.leading.equalToSuperview().offset(125)
        }
        otherConnection.snp.makeConstraints{ make in
            make.top.equalTo(forgetPasswordLable.snp.bottom).offset(200)
            make.leading.equalToSuperview().offset(140)
        }
        buttonFacebookConnection.snp.makeConstraints { make in
            make.top.equalTo(otherConnection.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(40)
            make.height.equalTo(35)
            make.width.equalTo(140)
        }
        buttonTwitterConnection.snp.makeConstraints { make in
            make.top.equalTo(otherConnection.snp.bottom).offset(20)
            make.trailing.equalToSuperview().offset(-40)
            make.height.equalTo(35)
            make.width.equalTo(140)
        }
        labelSignUp.snp.makeConstraints { make in
            make.top.equalTo(buttonFacebookConnection.snp.bottom).offset(35)
            make.leading.equalToSuperview().offset(90)
        }
        buttonSignUp.snp.makeConstraints { make in
            make.top.equalTo(buttonTwitterConnection.snp.bottom).offset(35)
            make.leading.equalTo(labelSignUp.snp.trailing).offset(10)
            make.height.equalTo(10)
        }
    }
}
extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}

