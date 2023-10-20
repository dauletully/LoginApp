
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

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        textFieldLogin.layer.cornerRadius = 45
        textFieldPassword.layer.cornerRadius = 45
    }

    //MARK: - Setup Views

    private func setupViews(){
        view.addSubview(titleLabel)
        view.addSubview(textFieldLogin)
        view.addSubview(textFieldPassword)
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
    }
}
