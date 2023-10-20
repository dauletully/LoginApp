
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
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }

    private func setupViews(){
        view.addSubview(titleLabel)
    }

    private func setupConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(50)
            make.leading.equalToSuperview().offset(145)
        }
    }
}

