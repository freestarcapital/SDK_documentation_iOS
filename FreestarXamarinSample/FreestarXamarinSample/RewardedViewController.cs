// This file has been autogenerated from a class added in the UI designer.

using System;

using Foundation;
using UIKit;
using com.freestar.ios.ads;

namespace FreestarXamarinSample
{
	public partial class RewardedViewController : UIViewController
	{
		public RewardedViewController (IntPtr handle) : base (handle)
		{
		}
        
        private FreestarRewardedAdListener<IFreestarRewardedDelegate> rl; //rewarded

        public UIViewController RewardAdViewControllerForPresentingModalView => this;

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            // Perform any additional setup after loading the view, typically from a nib.
            rl = new FreestarRewardedAdListener<IFreestarRewardedDelegate>(LoadRwdBtn, ShowRwdBtn, this);
            rl.SetupRewarded();
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }
    }
}
