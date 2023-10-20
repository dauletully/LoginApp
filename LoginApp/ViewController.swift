
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
        login.placeholder = "Enter you email"
        return login
    }()

    private lazy var textFieldPassword: UITextField = {
        let password = UITextField()
        password.borderStyle = .roundedRect
        password.textAlignment = .left
        password.placeholder = "Enter password"
        password.isSecureTextEntry = true
        return password
    }()

    private lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor(named: "backColor")
        button.setTitleColor(.white, for: .normal)
        return button
    }()

    private lazy var forgetPasswordLable: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Forget your password?"
        label.font = .boldSystemFont(ofSize: 12)
        return label
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
    }
}
