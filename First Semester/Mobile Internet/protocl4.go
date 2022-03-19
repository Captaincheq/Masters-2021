package protocl4

//正态分布随机数生产器：min:最小值，max:最大值，miu:期望值（均值），sigma:方差
func RandomNormalInt64(min int64, max int64, miu int64, sigma int64) (bool, int64) {
	if min >= max {
		return false, 0
	}
	if miu < min {
		miu = min
	}
	if miu > max {
		miu = max
	}
	var x int64
	var y, dScope float64
	for {
		x = RandFromRangeInt64(min, max)
		y = NormalFloat64(x, miu, sigma) * 100000
		dScope = float64(RandFromRangeInt64(0, int64(NormalFloat64(miu, miu, sigma)*100000)))
		//注意下传的是两个miu
		if dScope <= y {
			break
		}
	}
	return true, x
}

//————————————————
//版权声明：本文为CSDN博主「tony_stake」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
//原文链接：https://blog.csdn.net/tony_stake/article/details/110870927
