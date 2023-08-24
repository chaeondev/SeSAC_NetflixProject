//
//  MainViewController.swift
//  NetflixProject
//
//  Created by ChaewonMac on 2023/08/24.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    let posterImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "어벤져스엔드게임")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    let bottomView = {
        let view = UIView()
        view.backgroundColor = .brown
        return view
    }()
    
    let backgroundImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "background")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    let netflixButton = UIButton()
    
    let tvButton = {
        let view = ContentsListButton()
        view.setupButton(title: "TV 프로그램")
        return view
    }()
    let movieButton = {
        let view = ContentsListButton()
        view.setupButton(title: "영화")
        return view
    }()
    let likeButton = {
        let view = ContentsListButton()
        view.setupButton(title: "내가 찜한 콘텐츠")
        return view
    }()
    
    let likeChangeButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "check"), for: .normal)
        return view
    }()
    let likeChangeLabel = {
        let view = UILabel()
        view.text = "내가 찜한 콘텐츠"
        view.font = .systemFont(ofSize: 13, weight: .semibold)
        view.textColor = .white
        view.textAlignment = .center
        return view
    }()
    let playButton = UIButton()
    
    let infoButton = {
        let view = UIButton()
        view.setImage(UIImage(named: "info"), for: .normal)
        return view
    }()
    let infoLabel = {
        let view = UILabel()
        view.text = "정보"
        view.font = .systemFont(ofSize: 13, weight: .semibold)
        view.textColor = .white
        view.textAlignment = .center
        return view
    }()
    
    let previewLabel = UILabel()
    let firstPreviewImage = UIImageView()
    let secondPreviewImage = UIImageView()
    let thirdPreviewImage = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupConstraints()
        
        
    }


}

extension MainViewController {

    func setupConstraints() {
        view.addSubview(posterImageView)
        posterImageView.snp.makeConstraints { make in
            make.horizontalEdges.top.equalTo(view)
            make.height.equalTo(view).multipliedBy(0.77)
        }
        view.addSubview(bottomView)
        bottomView.snp.makeConstraints { make in
            make.top.equalTo(posterImageView.snp.bottom)
            make.horizontalEdges.bottom.equalTo(view)
        }
        view.addSubview(backgroundImageView)
        backgroundImageView.snp.makeConstraints { make in
            make.horizontalEdges.top.equalTo(view)
            make.height.equalTo(posterImageView.snp.height)
        }
        
        netflixButton.configuration = setupNeflixButton()
        view.addSubview(netflixButton)
        netflixButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(50)
            make.leading.equalToSuperview().offset(20)
        }
        
        view.addSubview(tvButton)
        tvButton.snp.makeConstraints { make in
            make.centerY.equalTo(netflixButton.snp.centerY)
            make.leading.equalTo(netflixButton.snp.trailing)
        }
        
        view.addSubview(movieButton)
        movieButton.snp.makeConstraints { make in
            make.centerY.equalTo(netflixButton.snp.centerY)
            make.leading.equalTo(tvButton.snp.trailing)
        }
        
        view.addSubview(likeButton)
        likeButton.snp.makeConstraints { make in
            make.centerY.equalTo(netflixButton.snp.centerY)
            make.leading.equalTo(movieButton.snp.trailing)
        }
        
        view.addSubview(likeChangeButton)
        likeChangeButton.snp.makeConstraints { make in
            make.leading.equalTo(50)
            make.size.equalTo(50)
            make.bottom.equalTo(backgroundImageView.snp.bottom).inset(10)
        }
        
        view.addSubview(likeChangeLabel)
        likeChangeLabel.snp.makeConstraints { make in
            make.centerX.equalTo(likeChangeButton.snp.centerX)
            make.top.equalTo(likeChangeButton.snp.bottom).inset(8)
        }
        
        playButton.configuration = setupPlayButton()
        playButton.configurationUpdateHandler = { btn in
            switch btn.state {
            case .highlighted:
                btn.configuration?.image = UIImage(named: "play_highlighted")
            default:
                btn.configuration?.image = UIImage(named: "play_normal")
            }
        }
        view.addSubview(playButton)
        playButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.size.equalTo(50)
            make.bottom.equalTo(backgroundImageView.snp.bottom)
        }
        
        view.addSubview(infoButton)
        infoButton.snp.makeConstraints { make in
            make.trailing.equalTo(-50)
            make.size.equalTo(50)
            make.bottom.equalTo(backgroundImageView.snp.bottom).inset(10)
        }
        
        view.addSubview(infoLabel)
        infoLabel.snp.makeConstraints { make in
            make.centerX.equalTo(infoButton.snp.centerX)
            make.top.equalTo(infoButton.snp.bottom).inset(8)
        }
        
    }
    
    func setupNeflixButton() -> UIButton.Configuration {
        var config = UIButton.Configuration.plain()
        var titleAttribute = AttributedString.init("N")
        titleAttribute.font = .systemFont(ofSize: 50, weight: .heavy)
        titleAttribute.foregroundColor = .white
        config.attributedTitle = titleAttribute
        config.titleAlignment = .center
        return config
    }
    
    func setupPlayButton() -> UIButton.Configuration {
        var config = UIButton.Configuration.plain()
        config.image = UIImage(named: "play_normal")
        return config
    }
}
    
