//
//  PhotosCollectionViewController.swift
//  AstronomyObjC
//
//  Created by Daniela Parra on 11/26/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

import UIKit

private let reuseIdentifier = "ImageCell"

class PhotosCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //client fetch Mars Rover named curiosity
        
        configureTitleView()
        
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        var totalUsableWidth = collectionView.frame.width
        let inset = self.collectionView(collectionView, layout: collectionViewLayout, insetForSectionAt: indexPath.section)
        totalUsableWidth -= inset.left + inset.right
        
        let minWidth: CGFloat = 150.0
        let numberOfItemsInOneRow = Int(totalUsableWidth / minWidth)
        totalUsableWidth -= CGFloat(numberOfItemsInOneRow - 1) * flowLayout.minimumInteritemSpacing
        let width = totalUsableWidth / CGFloat(numberOfItemsInOneRow)
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10.0, bottom: 0, right: 10.0)
    }
    // MARK: - Private
    
    private func configureTitleView() {
        
        let font = UIFont.systemFont(ofSize: 30)
        let attrs = [NSAttributedString.Key.font: font]
        
        let prevTitle = NSAttributedString(string: "<", attributes: attrs)
        let prevButton = UIButton(type: .system)
        prevButton.accessibilityIdentifier = "PhotosCollectionViewController.PreviousSolButton"
        prevButton.setAttributedTitle(prevTitle, for: .normal)
        //prevButton.addTarget(self, action: #selector(goToPreviousSol(_:)), for: .touchUpInside)
        
        let nextTitle = NSAttributedString(string: ">", attributes: attrs)
        let nextButton = UIButton(type: .system)
        nextButton.setAttributedTitle(nextTitle, for: .normal)
        //nextButton.addTarget(self, action: #selector(goToNextSol(_:)), for: .touchUpInside)
        nextButton.accessibilityIdentifier = "PhotosCollectionViewController.NextSolButton"
        
        let stackView = UIStackView(arrangedSubviews: [prevButton, solLabel, nextButton])
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = UIStackView.spacingUseSystem
        
        navigationItem.titleView = stackView
    }
    
    private func updateViews() {
        guard isViewLoaded else { return }
        //solLabel.text = "Sol \(solDescription?.sol ?? 0)"
    }
    
    private func loadImage(forCell cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
    
    }
    
    // MARK: - Properties
    
//    private let client = MarsRoverClient()
//    private let cache = Cache<Int, UIImage>()
//    private let photoFetchQueue = OperationQueue()
//    private var operations = [Int : Operation]()
//
//    private var roverInfo: MarsRover? {
//        didSet {
//            solDescription = roverInfo?.solDescriptions[2]
//        }
//    }
//
//    private var solDescription: SolDescription? {
//        didSet {
//            if let rover = roverInfo,
//                let sol = solDescription?.sol {
//                photoReferences = []
//                client.fetchPhotos(from: rover, onSol: sol) { (photoRefs, error) in
//                    if let e = error { NSLog("Error fetching photos for \(rover.name) on sol \(sol): \(e)"); return }
//                    self.photoReferences = photoRefs ?? []
//                    DispatchQueue.main.async { self.updateViews() }
//                }
//            }
//        }
//    }
//
//    private var photoReferences = [MarsPhotoReference]() {
//        didSet {
//            cache.clear()
//            DispatchQueue.main.async { self.collectionView?.reloadData() }
//        }
//    }
    
    let solLabel = UILabel()

}
