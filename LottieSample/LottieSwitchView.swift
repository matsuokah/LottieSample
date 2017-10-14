//
//  LottieView.swift
//  LottieSample
//
//  Created by matsuokah on 2017/10/14.
//  Copyright © 2017 matsuokah. All rights reserved.
//

import Foundation

import UIKit
import Lottie


@IBDesignable
class LottieSwitchView: UIView {
	@IBInspectable
	var filename: String = ""

	@IBInspectable
	var fromProgressToOff: CGFloat {
		set(newValue) {
			_fromProgressToOff = LottieSwitchView.shrinkInZeroToOne(value: newValue)
		}
		get {
			return _fromProgressToOff
		}
	}
	@IBInspectable
	var toProgressToOff: CGFloat {
		set(newValue) {
			_toProgressToOff = LottieSwitchView.shrinkInZeroToOne(value: newValue)
		}
		get {
			return _toProgressToOff
		}
	}

	@IBInspectable
	var fromProgressToOn: CGFloat {
		set(newValue) {
			_fromProgressToOn = LottieSwitchView.shrinkInZeroToOne(value: newValue)
		}
		get {
			return _fromProgressToOn
		}
	}
	@IBInspectable
	var toProgressToOn: CGFloat {
		set(newValue) {
			_toProgressToOn = LottieSwitchView.shrinkInZeroToOne(value: newValue)
		}
		get {
			return _toProgressToOn
		}
	}
	
	//// actual value
	private var _fromProgressToOff: CGFloat = 0
	private var _toProgressToOff: CGFloat = 0.5
	private var _fromProgressToOn: CGFloat = 0.5
	private var _toProgressToOn: CGFloat = 1.0

	override func awakeFromNib() {
		super.awakeFromNib()
		let animatedSwitch = LOTAnimatedSwitch.init(named: filename)
		animatedSwitch.setProgressRangeForOffState(fromProgress: fromProgressToOff, toProgress: toProgressToOff)
		animatedSwitch.setProgressRangeForOnState(fromProgress: fromProgressToOn, toProgress: toProgressToOn)
		self.addSubview(animatedSwitch)
		animatedSwitch.fitToParent()
	}
}

private extension LottieSwitchView {
	static func shrinkInZeroToOne(value: CGFloat) -> CGFloat {
		return min(1.0, max(value, 0))
	}
}
