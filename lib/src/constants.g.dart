// opencv_dart - OpenCV bindings for Dart language
//    c wrappers were from gocv: https://github.com/hybridgroup/gocv
//    License: Apache-2.0 https://github.com/hybridgroup/gocv/blob/release/LICENSE.txt
// Author: Rainyl
// License: Apache-2.0
// Date: 2024/01/28

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
/// @brief Video Acceleration type
///
/// Used as value in #CAP_PROP_HW_ACCELERATION and #VIDEOWRITER_PROP_HW_ACCELERATION
///
/// @note In case of FFmpeg backend, it translated to enum AVHWDeviceType (https://github.com/FFmpeg/FFmpeg/blob/master/libavutil/hwcontext.h)
abstract class VideoAccelerationType {
  /// !< Do not require any specific H/W acceleration, prefer software processing.
  /// !< Reading of this value means that special H/W accelerated handling is not added or not detected by OpenCV.
  static const int VIDEO_ACCELERATION_NONE = 0;

  /// !< Prefer to use H/W acceleration. If no one supported, then fallback to software processing.
  /// !< @note H/W acceleration may require special configuration of used environment.
  /// !< @note Results in encoding scenario may differ between software and hardware accelerated encoders.
  static const int VIDEO_ACCELERATION_ANY = 1;

  /// !< DirectX 11
  static const int VIDEO_ACCELERATION_D3D11 = 2;

  /// !< VAAPI
  static const int VIDEO_ACCELERATION_VAAPI = 3;

  /// !< libmfx (Intel MediaSDK/oneVPL)
  static const int VIDEO_ACCELERATION_MFX = 4;
}

/// @name OBSENSOR (for Orbbec 3D-Sensor device/module )
/// @{
/// /
/// //! OBSENSOR data given from image generator
abstract class VideoCaptureOBSensorDataType {
  /// !< Depth values in mm (CV_16UC1)
  static const int CAP_OBSENSOR_DEPTH_MAP = 0;

  /// !< Data given from BGR stream generator
  static const int CAP_OBSENSOR_BGR_IMAGE = 1;

  /// !< Data given from IR stream generator(CV_16UC1)
  static const int CAP_OBSENSOR_IR_IMAGE = 2;
}

/// ! OBSENSOR stream generator
abstract class VideoCaptureOBSensorGenerators {
  static const int CAP_OBSENSOR_DEPTH_GENERATOR = 536870912;
  static const int CAP_OBSENSOR_IMAGE_GENERATOR = 268435456;
  static const int CAP_OBSENSOR_IR_GENERATOR = 134217728;
  static const int CAP_OBSENSOR_GENERATORS_MASK = 939524096;
}

/// !OBSENSOR properties
abstract class VideoCaptureOBSensorProperties {
  /// INTRINSIC
  static const int CAP_PROP_OBSENSOR_INTRINSIC_FX = 26001;
  static const int CAP_PROP_OBSENSOR_INTRINSIC_FY = 26002;
  static const int CAP_PROP_OBSENSOR_INTRINSIC_CX = 26003;
  static const int CAP_PROP_OBSENSOR_INTRINSIC_CY = 26004;
}

const int COLOR_BGR2BGRA = 0;

const int COLOR_RGB2RGBA = 0;

const int COLOR_BGRA2BGR = 1;

const int COLOR_RGBA2RGB = 1;

const int COLOR_BGR2RGBA = 2;

const int COLOR_RGB2BGRA = 2;

const int COLOR_RGBA2BGR = 3;

const int COLOR_BGRA2RGB = 3;

const int COLOR_BGR2RGB = 4;

const int COLOR_RGB2BGR = 4;

const int COLOR_BGRA2RGBA = 5;

const int COLOR_RGBA2BGRA = 5;

const int COLOR_BGR2GRAY = 6;

const int COLOR_RGB2GRAY = 7;

const int COLOR_GRAY2BGR = 8;

const int COLOR_GRAY2RGB = 8;

const int COLOR_GRAY2BGRA = 9;

const int COLOR_GRAY2RGBA = 9;

const int COLOR_BGRA2GRAY = 10;

const int COLOR_RGBA2GRAY = 11;

const int COLOR_BGR2BGR565 = 12;

const int COLOR_RGB2BGR565 = 13;

const int COLOR_BGR5652BGR = 14;

const int COLOR_BGR5652RGB = 15;

const int COLOR_BGRA2BGR565 = 16;

const int COLOR_RGBA2BGR565 = 17;

const int COLOR_BGR5652BGRA = 18;

const int COLOR_BGR5652RGBA = 19;

const int COLOR_GRAY2BGR565 = 20;

const int COLOR_BGR5652GRAY = 21;

const int COLOR_BGR2BGR555 = 22;

const int COLOR_RGB2BGR555 = 23;

const int COLOR_BGR5552BGR = 24;

const int COLOR_BGR5552RGB = 25;

const int COLOR_BGRA2BGR555 = 26;

const int COLOR_RGBA2BGR555 = 27;

const int COLOR_BGR5552BGRA = 28;

const int COLOR_BGR5552RGBA = 29;

const int COLOR_GRAY2BGR555 = 30;

const int COLOR_BGR5552GRAY = 31;

const int COLOR_BGR2XYZ = 32;

const int COLOR_RGB2XYZ = 33;

const int COLOR_XYZ2BGR = 34;

const int COLOR_XYZ2RGB = 35;

const int COLOR_BGR2YCrCb = 36;

const int COLOR_RGB2YCrCb = 37;

const int COLOR_YCrCb2BGR = 38;

const int COLOR_YCrCb2RGB = 39;

const int COLOR_BGR2HSV = 40;

const int COLOR_RGB2HSV = 41;

const int COLOR_BGR2Lab = 44;

const int COLOR_RGB2Lab = 45;

const int COLOR_BGR2Luv = 50;

const int COLOR_RGB2Luv = 51;

const int COLOR_BGR2HLS = 52;

const int COLOR_RGB2HLS = 53;

const int COLOR_HSV2BGR = 54;

const int COLOR_HSV2RGB = 55;

const int COLOR_Lab2BGR = 56;

const int COLOR_Lab2RGB = 57;

const int COLOR_Luv2BGR = 58;

const int COLOR_Luv2RGB = 59;

const int COLOR_HLS2BGR = 60;

const int COLOR_HLS2RGB = 61;

const int COLOR_BGR2HSV_FULL = 66;

const int COLOR_RGB2HSV_FULL = 67;

const int COLOR_BGR2HLS_FULL = 68;

const int COLOR_RGB2HLS_FULL = 69;

const int COLOR_HSV2BGR_FULL = 70;

const int COLOR_HSV2RGB_FULL = 71;

const int COLOR_HLS2BGR_FULL = 72;

const int COLOR_HLS2RGB_FULL = 73;

const int COLOR_LBGR2Lab = 74;

const int COLOR_LRGB2Lab = 75;

const int COLOR_LBGR2Luv = 76;

const int COLOR_LRGB2Luv = 77;

const int COLOR_Lab2LBGR = 78;

const int COLOR_Lab2LRGB = 79;

const int COLOR_Luv2LBGR = 80;

const int COLOR_Luv2LRGB = 81;

const int COLOR_BGR2YUV = 82;

const int COLOR_RGB2YUV = 83;

const int COLOR_YUV2BGR = 84;

const int COLOR_YUV2RGB = 85;

const int COLOR_YUV2RGB_NV12 = 90;

const int COLOR_YUV2BGR_NV12 = 91;

const int COLOR_YUV2RGB_NV21 = 92;

const int COLOR_YUV2BGR_NV21 = 93;

const int COLOR_YUV420sp2RGB = 92;

const int COLOR_YUV420sp2BGR = 93;

const int COLOR_YUV2RGBA_NV12 = 94;

const int COLOR_YUV2BGRA_NV12 = 95;

const int COLOR_YUV2RGBA_NV21 = 96;

const int COLOR_YUV2BGRA_NV21 = 97;

const int COLOR_YUV420sp2RGBA = 96;

const int COLOR_YUV420sp2BGRA = 97;

const int COLOR_YUV2RGB_YV12 = 98;

const int COLOR_YUV2BGR_YV12 = 99;

const int COLOR_YUV2RGB_IYUV = 100;

const int COLOR_YUV2BGR_IYUV = 101;

const int COLOR_YUV2RGB_I420 = 100;

const int COLOR_YUV2BGR_I420 = 101;

const int COLOR_YUV420p2RGB = 98;

const int COLOR_YUV420p2BGR = 99;

const int COLOR_YUV2RGBA_YV12 = 102;

const int COLOR_YUV2BGRA_YV12 = 103;

const int COLOR_YUV2RGBA_IYUV = 104;

const int COLOR_YUV2BGRA_IYUV = 105;

const int COLOR_YUV2RGBA_I420 = 104;

const int COLOR_YUV2BGRA_I420 = 105;

const int COLOR_YUV420p2RGBA = 102;

const int COLOR_YUV420p2BGRA = 103;

const int COLOR_YUV2GRAY_420 = 106;

const int COLOR_YUV2GRAY_NV21 = 106;

const int COLOR_YUV2GRAY_NV12 = 106;

const int COLOR_YUV2GRAY_YV12 = 106;

const int COLOR_YUV2GRAY_IYUV = 106;

const int COLOR_YUV2GRAY_I420 = 106;

const int COLOR_YUV420sp2GRAY = 106;

const int COLOR_YUV420p2GRAY = 106;

const int COLOR_YUV2RGB_UYVY = 107;

const int COLOR_YUV2BGR_UYVY = 108;

const int COLOR_YUV2RGB_Y422 = 107;

const int COLOR_YUV2BGR_Y422 = 108;

const int COLOR_YUV2RGB_UYNV = 107;

const int COLOR_YUV2BGR_UYNV = 108;

const int COLOR_YUV2RGBA_UYVY = 111;

const int COLOR_YUV2BGRA_UYVY = 112;

const int COLOR_YUV2RGBA_Y422 = 111;

const int COLOR_YUV2BGRA_Y422 = 112;

const int COLOR_YUV2RGBA_UYNV = 111;

const int COLOR_YUV2BGRA_UYNV = 112;

const int COLOR_YUV2RGB_YUY2 = 115;

const int COLOR_YUV2BGR_YUY2 = 116;

const int COLOR_YUV2RGB_YVYU = 117;

const int COLOR_YUV2BGR_YVYU = 118;

const int COLOR_YUV2RGB_YUYV = 115;

const int COLOR_YUV2BGR_YUYV = 116;

const int COLOR_YUV2RGB_YUNV = 115;

const int COLOR_YUV2BGR_YUNV = 116;

const int COLOR_YUV2RGBA_YUY2 = 119;

const int COLOR_YUV2BGRA_YUY2 = 120;

const int COLOR_YUV2RGBA_YVYU = 121;

const int COLOR_YUV2BGRA_YVYU = 122;

const int COLOR_YUV2RGBA_YUYV = 119;

const int COLOR_YUV2BGRA_YUYV = 120;

const int COLOR_YUV2RGBA_YUNV = 119;

const int COLOR_YUV2BGRA_YUNV = 120;

const int COLOR_YUV2GRAY_UYVY = 123;

const int COLOR_YUV2GRAY_YUY2 = 124;

const int COLOR_YUV2GRAY_Y422 = 123;

const int COLOR_YUV2GRAY_UYNV = 123;

const int COLOR_YUV2GRAY_YVYU = 124;

const int COLOR_YUV2GRAY_YUYV = 124;

const int COLOR_YUV2GRAY_YUNV = 124;

const int COLOR_RGBA2mRGBA = 125;

const int COLOR_mRGBA2RGBA = 126;

const int COLOR_RGB2YUV_I420 = 127;

const int COLOR_BGR2YUV_I420 = 128;

const int COLOR_RGB2YUV_IYUV = 127;

const int COLOR_BGR2YUV_IYUV = 128;

const int COLOR_RGBA2YUV_I420 = 129;

const int COLOR_BGRA2YUV_I420 = 130;

const int COLOR_RGBA2YUV_IYUV = 129;

const int COLOR_BGRA2YUV_IYUV = 130;

const int COLOR_RGB2YUV_YV12 = 131;

const int COLOR_BGR2YUV_YV12 = 132;

const int COLOR_RGBA2YUV_YV12 = 133;

const int COLOR_BGRA2YUV_YV12 = 134;

const int COLOR_BayerBG2BGR = 46;

const int COLOR_BayerGB2BGR = 47;

const int COLOR_BayerRG2BGR = 48;

const int COLOR_BayerGR2BGR = 49;

const int COLOR_BayerRGGB2BGR = 46;

const int COLOR_BayerGRBG2BGR = 47;

const int COLOR_BayerBGGR2BGR = 48;

const int COLOR_BayerGBRG2BGR = 49;

const int COLOR_BayerRGGB2RGB = 48;

const int COLOR_BayerGRBG2RGB = 49;

const int COLOR_BayerBGGR2RGB = 46;

const int COLOR_BayerGBRG2RGB = 47;

const int COLOR_BayerBG2RGB = 48;

const int COLOR_BayerGB2RGB = 49;

const int COLOR_BayerRG2RGB = 46;

const int COLOR_BayerGR2RGB = 47;

const int COLOR_BayerBG2GRAY = 86;

const int COLOR_BayerGB2GRAY = 87;

const int COLOR_BayerRG2GRAY = 88;

const int COLOR_BayerGR2GRAY = 89;

const int COLOR_BayerRGGB2GRAY = 86;

const int COLOR_BayerGRBG2GRAY = 87;

const int COLOR_BayerBGGR2GRAY = 88;

const int COLOR_BayerGBRG2GRAY = 89;

const int COLOR_BayerBG2BGR_VNG = 62;

const int COLOR_BayerGB2BGR_VNG = 63;

const int COLOR_BayerRG2BGR_VNG = 64;

const int COLOR_BayerGR2BGR_VNG = 65;

const int COLOR_BayerRGGB2BGR_VNG = 62;

const int COLOR_BayerGRBG2BGR_VNG = 63;

const int COLOR_BayerBGGR2BGR_VNG = 64;

const int COLOR_BayerGBRG2BGR_VNG = 65;

const int COLOR_BayerRGGB2RGB_VNG = 64;

const int COLOR_BayerGRBG2RGB_VNG = 65;

const int COLOR_BayerBGGR2RGB_VNG = 62;

const int COLOR_BayerGBRG2RGB_VNG = 63;

const int COLOR_BayerBG2RGB_VNG = 64;

const int COLOR_BayerGB2RGB_VNG = 65;

const int COLOR_BayerRG2RGB_VNG = 62;

const int COLOR_BayerGR2RGB_VNG = 63;

const int COLOR_BayerBG2BGR_EA = 135;

const int COLOR_BayerGB2BGR_EA = 136;

const int COLOR_BayerRG2BGR_EA = 137;

const int COLOR_BayerGR2BGR_EA = 138;

const int COLOR_BayerRGGB2BGR_EA = 135;

const int COLOR_BayerGRBG2BGR_EA = 136;

const int COLOR_BayerBGGR2BGR_EA = 137;

const int COLOR_BayerGBRG2BGR_EA = 138;

const int COLOR_BayerRGGB2RGB_EA = 137;

const int COLOR_BayerGRBG2RGB_EA = 138;

const int COLOR_BayerBGGR2RGB_EA = 135;

const int COLOR_BayerGBRG2RGB_EA = 136;

const int COLOR_BayerBG2RGB_EA = 137;

const int COLOR_BayerGB2RGB_EA = 138;

const int COLOR_BayerRG2RGB_EA = 135;

const int COLOR_BayerGR2RGB_EA = 136;

const int COLOR_BayerBG2BGRA = 139;

const int COLOR_BayerGB2BGRA = 140;

const int COLOR_BayerRG2BGRA = 141;

const int COLOR_BayerGR2BGRA = 142;

const int COLOR_BayerRGGB2BGRA = 139;

const int COLOR_BayerGRBG2BGRA = 140;

const int COLOR_BayerBGGR2BGRA = 141;

const int COLOR_BayerGBRG2BGRA = 142;

const int COLOR_BayerRGGB2RGBA = 141;

const int COLOR_BayerGRBG2RGBA = 142;

const int COLOR_BayerBGGR2RGBA = 139;

const int COLOR_BayerGBRG2RGBA = 140;

const int COLOR_BayerBG2RGBA = 141;

const int COLOR_BayerGB2RGBA = 142;

const int COLOR_BayerRG2RGBA = 139;

const int COLOR_BayerGR2RGBA = 140;

const int COLOR_RGB2YUV_UYVY = 143;

const int COLOR_BGR2YUV_UYVY = 144;

const int COLOR_RGB2YUV_Y422 = 143;

const int COLOR_BGR2YUV_Y422 = 144;

const int COLOR_RGB2YUV_UYNV = 143;

const int COLOR_BGR2YUV_UYNV = 144;

const int COLOR_RGBA2YUV_UYVY = 145;

const int COLOR_BGRA2YUV_UYVY = 146;

const int COLOR_RGBA2YUV_Y422 = 145;

const int COLOR_BGRA2YUV_Y422 = 146;

const int COLOR_RGBA2YUV_UYNV = 145;

const int COLOR_BGRA2YUV_UYNV = 146;

const int COLOR_RGB2YUV_YUY2 = 147;

const int COLOR_BGR2YUV_YUY2 = 148;

const int COLOR_RGB2YUV_YVYU = 149;

const int COLOR_BGR2YUV_YVYU = 150;

const int COLOR_RGB2YUV_YUYV = 147;

const int COLOR_BGR2YUV_YUYV = 148;

const int COLOR_RGB2YUV_YUNV = 147;

const int COLOR_BGR2YUV_YUNV = 148;

const int COLOR_RGBA2YUV_YUY2 = 151;

const int COLOR_BGRA2YUV_YUY2 = 152;

const int COLOR_RGBA2YUV_YVYU = 153;

const int COLOR_BGRA2YUV_YVYU = 154;

const int COLOR_RGBA2YUV_YUYV = 151;

const int COLOR_BGRA2YUV_YUYV = 152;

const int COLOR_RGBA2YUV_YUNV = 151;

const int COLOR_BGRA2YUV_YUNV = 152;

const int COLOR_COLORCVT_MAX = 155;

const int HISTCMP_CORREL = 0;

const int HISTCMP_CHISQR = 1;

const int HISTCMP_INTERSECT = 2;

const int HISTCMP_BHATTACHARYYA = 3;

const int HISTCMP_HELLINGER = 3;

const int HISTCMP_CHISQR_ALT = 4;

const int HISTCMP_KL_DIV = 5;

const int BORDER_CONSTANT = 0;

const int BORDER_REPLICATE = 1;

const int BORDER_REFLECT = 2;

const int BORDER_WRAP = 3;

const int BORDER_REFLECT_101 = 4;

const int BORDER_TRANSPARENT = 5;

const int BORDER_REFLECT101 = 4;

const int BORDER_DEFAULT = 4;

const int BORDER_ISOLATED = 16;

const int FILTER_SCHARR = -1;

const int MORPH_ERODE = 0;

const int MORPH_DILATE = 1;

const int MORPH_OPEN = 2;

const int MORPH_CLOSE = 3;

const int MORPH_GRADIENT = 4;

const int MORPH_TOPHAT = 5;

const int MORPH_BLACKHAT = 6;

const int MORPH_HITMISS = 7;

const int MORPH_RECT = 0;

const int MORPH_CROSS = 1;

const int MORPH_ELLIPSE = 2;

const int INTER_NEAREST = 0;

const int INTER_LINEAR = 1;

const int INTER_CUBIC = 2;

const int INTER_AREA = 3;

const int INTER_LANCZOS4 = 4;

const int INTER_LINEAR_EXACT = 5;

const int INTER_NEAREST_EXACT = 6;

const int INTER_MAX = 7;

const int WARP_FILL_OUTLIERS = 8;

const int WARP_INVERSE_MAP = 16;

const int WARP_POLAR_LINEAR = 0;

const int WARP_POLAR_LOG = 256;

const int INTER_BITS = 5;

const int INTER_BITS2 = 10;

const int INTER_TAB_SIZE = 32;

const int INTER_TAB_SIZE2 = 1024;

const int DIST_USER = -1;

const int DIST_L1 = 1;

const int DIST_L2 = 2;

const int DIST_C = 3;

const int DIST_L12 = 4;

const int DIST_FAIR = 5;

const int DIST_WELSCH = 6;

const int DIST_HUBER = 7;

const int DIST_MASK_3 = 3;

const int DIST_MASK_5 = 5;

const int DIST_MASK_PRECISE = 0;

const int THRESH_BINARY = 0;

const int THRESH_BINARY_INV = 1;

const int THRESH_TRUNC = 2;

const int THRESH_TOZERO = 3;

const int THRESH_TOZERO_INV = 4;

const int THRESH_MASK = 7;

const int THRESH_OTSU = 8;

const int THRESH_TRIANGLE = 16;

const int ADAPTIVE_THRESH_MEAN_C = 0;

const int ADAPTIVE_THRESH_GAUSSIAN_C = 1;

const int GC_BGD = 0;

const int GC_FGD = 1;

const int GC_PR_BGD = 2;

const int GC_PR_FGD = 3;

const int GC_INIT_WITH_RECT = 0;

const int GC_INIT_WITH_MASK = 1;

const int GC_EVAL = 2;

const int GC_EVAL_FREEZE_MODEL = 3;

const int DIST_LABEL_CCOMP = 0;

const int DIST_LABEL_PIXEL = 1;

const int FLOODFILL_FIXED_RANGE = 65536;

const int FLOODFILL_MASK_ONLY = 131072;

const int CC_STAT_LEFT = 0;

const int CC_STAT_TOP = 1;

const int CC_STAT_WIDTH = 2;

const int CC_STAT_HEIGHT = 3;

const int CC_STAT_AREA = 4;

const int CC_STAT_MAX = 5;

const int CCL_DEFAULT = -1;

const int CCL_WU = 0;

const int CCL_GRANA = 1;

const int CCL_BOLELLI = 2;

const int CCL_SAUF = 3;

const int CCL_BBDT = 4;

const int CCL_SPAGHETTI = 5;

const int RETR_EXTERNAL = 0;

const int RETR_LIST = 1;

const int RETR_CCOMP = 2;

const int RETR_TREE = 3;

const int RETR_FLOODFILL = 4;

const int CHAIN_APPROX_NONE = 1;

const int CHAIN_APPROX_SIMPLE = 2;

const int CHAIN_APPROX_TC89_L1 = 3;

const int CHAIN_APPROX_TC89_KCOS = 4;

const int CONTOURS_MATCH_I1 = 1;

const int CONTOURS_MATCH_I2 = 2;

const int CONTOURS_MATCH_I3 = 3;

const int HOUGH_STANDARD = 0;

const int HOUGH_PROBABILISTIC = 1;

const int HOUGH_MULTI_SCALE = 2;

const int HOUGH_GRADIENT = 3;

const int HOUGH_GRADIENT_ALT = 4;

const int LSD_REFINE_NONE = 0;

const int LSD_REFINE_STD = 1;

const int LSD_REFINE_ADV = 2;

const int INTERSECT_NONE = 0;

const int INTERSECT_PARTIAL = 1;

const int INTERSECT_FULL = 2;

const int FILLED = -1;

const int LINE_4 = 4;

const int LINE_8 = 8;

const int LINE_AA = 16;

const int FONT_HERSHEY_SIMPLEX = 0;

const int FONT_HERSHEY_PLAIN = 1;

const int FONT_HERSHEY_DUPLEX = 2;

const int FONT_HERSHEY_COMPLEX = 3;

const int FONT_HERSHEY_TRIPLEX = 4;

const int FONT_HERSHEY_COMPLEX_SMALL = 5;

const int FONT_HERSHEY_SCRIPT_SIMPLEX = 6;

const int FONT_HERSHEY_SCRIPT_COMPLEX = 7;

const int FONT_ITALIC = 16;

const int MARKER_CROSS = 0;

const int MARKER_TILTED_CROSS = 1;

const int MARKER_STAR = 2;

const int MARKER_DIAMOND = 3;

const int MARKER_SQUARE = 4;

const int MARKER_TRIANGLE_UP = 5;

const int MARKER_TRIANGLE_DOWN = 6;

const int DECOMP_LU = 0;

const int DECOMP_SVD = 1;

const int DECOMP_EIG = 2;

const int DECOMP_CHOLESKY = 3;

const int DECOMP_QR = 4;

const int DECOMP_NORMAL = 16;

const int NORM_INF = 1;

const int NORM_L1 = 2;

const int NORM_L2 = 4;

const int NORM_L2SQR = 5;

const int NORM_HAMMING = 6;

const int NORM_HAMMING2 = 7;

const int NORM_TYPE_MASK = 7;

const int NORM_RELATIVE = 8;

const int NORM_MINMAX = 32;

const int CMP_EQ = 0;

const int CMP_GT = 1;

const int CMP_GE = 2;

const int CMP_LT = 3;

const int CMP_LE = 4;

const int CMP_NE = 5;

const int GEMM_1_T = 1;

const int GEMM_2_T = 2;

const int GEMM_3_T = 4;

const int DFT_INVERSE = 1;

const int DFT_SCALE = 2;

const int DFT_ROWS = 4;

const int DFT_COMPLEX_OUTPUT = 16;

const int DFT_REAL_OUTPUT = 32;

const int DFT_COMPLEX_INPUT = 64;

const int DCT_INVERSE = 1;

const int DCT_ROWS = 4;

const int COLORMAP_AUTUMN = 0;

const int COLORMAP_BONE = 1;

const int COLORMAP_JET = 2;

const int COLORMAP_WINTER = 3;

const int COLORMAP_RAINBOW = 4;

const int COLORMAP_OCEAN = 5;

const int COLORMAP_SUMMER = 6;

const int COLORMAP_SPRING = 7;

const int COLORMAP_COOL = 8;

const int COLORMAP_HSV = 9;

const int COLORMAP_PINK = 10;

const int COLORMAP_HOT = 11;

const int COLORMAP_PARULA = 12;

const int COLORMAP_MAGMA = 13;

const int COLORMAP_INFERNO = 14;

const int COLORMAP_PLASMA = 15;

const int COLORMAP_VIRIDIS = 16;

const int COLORMAP_CIVIDIS = 17;

const int COLORMAP_TWILIGHT = 18;

const int COLORMAP_TWILIGHT_SHIFTED = 19;

const int COLORMAP_TURBO = 20;

const int COLORMAP_DEEPGREEN = 21;

const int IMREAD_UNCHANGED = -1;

const int IMREAD_GRAYSCALE = 0;

const int IMREAD_COLOR = 1;

const int IMREAD_ANYDEPTH = 2;

const int IMREAD_ANYCOLOR = 4;

const int IMREAD_LOAD_GDAL = 8;

const int IMREAD_REDUCED_GRAYSCALE_2 = 16;

const int IMREAD_REDUCED_COLOR_2 = 17;

const int IMREAD_REDUCED_GRAYSCALE_4 = 32;

const int IMREAD_REDUCED_COLOR_4 = 33;

const int IMREAD_REDUCED_GRAYSCALE_8 = 64;

const int IMREAD_REDUCED_COLOR_8 = 65;

const int IMREAD_IGNORE_ORIENTATION = 128;

const int IMWRITE_JPEG_QUALITY = 1;

const int IMWRITE_JPEG_PROGRESSIVE = 2;

const int IMWRITE_JPEG_OPTIMIZE = 3;

const int IMWRITE_JPEG_RST_INTERVAL = 4;

const int IMWRITE_JPEG_LUMA_QUALITY = 5;

const int IMWRITE_JPEG_CHROMA_QUALITY = 6;

const int IMWRITE_JPEG_SAMPLING_FACTOR = 7;

const int IMWRITE_PNG_COMPRESSION = 16;

const int IMWRITE_PNG_STRATEGY = 17;

const int IMWRITE_PNG_BILEVEL = 18;

const int IMWRITE_PXM_BINARY = 32;

const int IMWRITE_EXR_TYPE = 48;

const int IMWRITE_EXR_COMPRESSION = 49;

const int IMWRITE_EXR_DWA_COMPRESSION_LEVEL = 50;

const int IMWRITE_WEBP_QUALITY = 64;

const int IMWRITE_HDR_COMPRESSION = 80;

const int IMWRITE_PAM_TUPLETYPE = 128;

const int IMWRITE_TIFF_RESUNIT = 256;

const int IMWRITE_TIFF_XDPI = 257;

const int IMWRITE_TIFF_YDPI = 258;

const int IMWRITE_TIFF_COMPRESSION = 259;

const int IMWRITE_JPEG2000_COMPRESSION_X1000 = 272;

const int IMWRITE_AVIF_QUALITY = 512;

const int IMWRITE_AVIF_DEPTH = 513;

const int IMWRITE_AVIF_SPEED = 514;

const int IMWRITE_JPEG_SAMPLING_FACTOR_411 = 4264209;

const int IMWRITE_JPEG_SAMPLING_FACTOR_420 = 2232593;

const int IMWRITE_JPEG_SAMPLING_FACTOR_422 = 2167057;

const int IMWRITE_JPEG_SAMPLING_FACTOR_440 = 1184017;

const int IMWRITE_JPEG_SAMPLING_FACTOR_444 = 1118481;

const int IMWRITE_EXR_TYPE_HALF = 1;

const int IMWRITE_EXR_TYPE_FLOAT = 2;

const int IMWRITE_EXR_COMPRESSION_NO = 0;

const int IMWRITE_EXR_COMPRESSION_RLE = 1;

const int IMWRITE_EXR_COMPRESSION_ZIPS = 2;

const int IMWRITE_EXR_COMPRESSION_ZIP = 3;

const int IMWRITE_EXR_COMPRESSION_PIZ = 4;

const int IMWRITE_EXR_COMPRESSION_PXR24 = 5;

const int IMWRITE_EXR_COMPRESSION_B44 = 6;

const int IMWRITE_EXR_COMPRESSION_B44A = 7;

const int IMWRITE_EXR_COMPRESSION_DWAA = 8;

const int IMWRITE_EXR_COMPRESSION_DWAB = 9;

const int IMWRITE_PNG_STRATEGY_DEFAULT = 0;

const int IMWRITE_PNG_STRATEGY_FILTERED = 1;

const int IMWRITE_PNG_STRATEGY_HUFFMAN_ONLY = 2;

const int IMWRITE_PNG_STRATEGY_RLE = 3;

const int IMWRITE_PNG_STRATEGY_FIXED = 4;

const int IMWRITE_PAM_FORMAT_NULL = 0;

const int IMWRITE_PAM_FORMAT_BLACKANDWHITE = 1;

const int IMWRITE_PAM_FORMAT_GRAYSCALE = 2;

const int IMWRITE_PAM_FORMAT_GRAYSCALE_ALPHA = 3;

const int IMWRITE_PAM_FORMAT_RGB = 4;

const int IMWRITE_PAM_FORMAT_RGB_ALPHA = 5;

const int IMWRITE_HDR_COMPRESSION_NONE = 0;

const int IMWRITE_HDR_COMPRESSION_RLE = 1;

const int SORT_EVERY_ROW = 0;

const int SORT_EVERY_COLUMN = 1;

const int SORT_ASCENDING = 0;

const int SORT_DESCENDING = 16;

const int COVAR_SCRAMBLED = 0;

const int COVAR_NORMAL = 1;

const int COVAR_USE_AVG = 2;

const int COVAR_SCALE = 4;

const int COVAR_ROWS = 8;

const int COVAR_COLS = 16;

const int KMEANS_RANDOM_CENTERS = 0;

const int KMEANS_PP_CENTERS = 2;

const int KMEANS_USE_INITIAL_LABELS = 1;

const int REDUCE_SUM = 0;

const int REDUCE_AVG = 1;

const int REDUCE_MAX = 2;

const int REDUCE_MIN = 3;

const int REDUCE_SUM2 = 4;

const int ROTATE_90_CLOCKWISE = 0;

const int ROTATE_180 = 1;

const int ROTATE_90_COUNTERCLOCKWISE = 2;

const int TERM_COUNT = 1;

const int TERM_MAX_ITER = 1;

const int TERM_EPS = 2;

const int RNG_DIST_UNIFORM = 0;

const int RNG_DIST_NORMAL = 1;

const int OPTFLOW_USE_INITIAL_FLOW = 4;

const int OPTFLOW_LK_GET_MIN_EIGENVALS = 8;

const int OPTFLOW_FARNEBACK_GAUSSIAN = 256;

const int MOTION_TRANSLATION = 0;

const int MOTION_EUCLIDEAN = 1;

const int MOTION_AFFINE = 2;

const int MOTION_HOMOGRAPHY = 3;

const int CAP_ANY = 0;

const int CAP_VFW = 200;

const int CAP_V4L = 200;

const int CAP_V4L2 = 200;

const int CAP_FIREWIRE = 300;

const int CAP_FIREWARE = 300;

const int CAP_IEEE1394 = 300;

const int CAP_DC1394 = 300;

const int CAP_CMU1394 = 300;

const int CAP_QT = 500;

const int CAP_UNICAP = 600;

const int CAP_DSHOW = 700;

const int CAP_PVAPI = 800;

const int CAP_OPENNI = 900;

const int CAP_OPENNI_ASUS = 910;

const int CAP_ANDROID = 1000;

const int CAP_XIAPI = 1100;

const int CAP_AVFOUNDATION = 1200;

const int CAP_GIGANETIX = 1300;

const int CAP_MSMF = 1400;

const int CAP_WINRT = 1410;

const int CAP_INTELPERC = 1500;

const int CAP_REALSENSE = 1500;

const int CAP_OPENNI2 = 1600;

const int CAP_OPENNI2_ASUS = 1610;

const int CAP_OPENNI2_ASTRA = 1620;

const int CAP_GPHOTO2 = 1700;

const int CAP_GSTREAMER = 1800;

const int CAP_FFMPEG = 1900;

const int CAP_IMAGES = 2000;

const int CAP_ARAVIS = 2100;

const int CAP_OPENCV_MJPEG = 2200;

const int CAP_INTEL_MFX = 2300;

const int CAP_XINE = 2400;

const int CAP_UEYE = 2500;

const int CAP_OBSENSOR = 2600;

const int CAP_PROP_POS_MSEC = 0;

const int CAP_PROP_POS_FRAMES = 1;

const int CAP_PROP_POS_AVI_RATIO = 2;

const int CAP_PROP_FRAME_WIDTH = 3;

const int CAP_PROP_FRAME_HEIGHT = 4;

const int CAP_PROP_FPS = 5;

const int CAP_PROP_FOURCC = 6;

const int CAP_PROP_FRAME_COUNT = 7;

const int CAP_PROP_FORMAT = 8;

const int CAP_PROP_MODE = 9;

const int CAP_PROP_BRIGHTNESS = 10;

const int CAP_PROP_CONTRAST = 11;

const int CAP_PROP_SATURATION = 12;

const int CAP_PROP_HUE = 13;

const int CAP_PROP_GAIN = 14;

const int CAP_PROP_EXPOSURE = 15;

const int CAP_PROP_CONVERT_RGB = 16;

const int CAP_PROP_WHITE_BALANCE_BLUE_U = 17;

const int CAP_PROP_RECTIFICATION = 18;

const int CAP_PROP_MONOCHROME = 19;

const int CAP_PROP_SHARPNESS = 20;

const int CAP_PROP_AUTO_EXPOSURE = 21;

const int CAP_PROP_GAMMA = 22;

const int CAP_PROP_TEMPERATURE = 23;

const int CAP_PROP_TRIGGER = 24;

const int CAP_PROP_TRIGGER_DELAY = 25;

const int CAP_PROP_WHITE_BALANCE_RED_V = 26;

const int CAP_PROP_ZOOM = 27;

const int CAP_PROP_FOCUS = 28;

const int CAP_PROP_GUID = 29;

const int CAP_PROP_ISO_SPEED = 30;

const int CAP_PROP_BACKLIGHT = 32;

const int CAP_PROP_PAN = 33;

const int CAP_PROP_TILT = 34;

const int CAP_PROP_ROLL = 35;

const int CAP_PROP_IRIS = 36;

const int CAP_PROP_SETTINGS = 37;

const int CAP_PROP_BUFFERSIZE = 38;

const int CAP_PROP_AUTOFOCUS = 39;

const int CAP_PROP_SAR_NUM = 40;

const int CAP_PROP_SAR_DEN = 41;

const int CAP_PROP_BACKEND = 42;

const int CAP_PROP_CHANNEL = 43;

const int CAP_PROP_AUTO_WB = 44;

const int CAP_PROP_WB_TEMPERATURE = 45;

const int CAP_PROP_CODEC_PIXEL_FORMAT = 46;

const int CAP_PROP_BITRATE = 47;

const int CAP_PROP_ORIENTATION_META = 48;

const int CAP_PROP_ORIENTATION_AUTO = 49;

const int CAP_PROP_HW_ACCELERATION = 50;

const int CAP_PROP_HW_DEVICE = 51;

const int CAP_PROP_HW_ACCELERATION_USE_OPENCL = 52;

const int CAP_PROP_OPEN_TIMEOUT_MSEC = 53;

const int CAP_PROP_READ_TIMEOUT_MSEC = 54;

const int CAP_PROP_STREAM_OPEN_TIME_USEC = 55;

const int CAP_PROP_VIDEO_TOTAL_CHANNELS = 56;

const int CAP_PROP_VIDEO_STREAM = 57;

const int CAP_PROP_AUDIO_STREAM = 58;

const int CAP_PROP_AUDIO_POS = 59;

const int CAP_PROP_AUDIO_SHIFT_NSEC = 60;

const int CAP_PROP_AUDIO_DATA_DEPTH = 61;

const int CAP_PROP_AUDIO_SAMPLES_PER_SECOND = 62;

const int CAP_PROP_AUDIO_BASE_INDEX = 63;

const int CAP_PROP_AUDIO_TOTAL_CHANNELS = 64;

const int CAP_PROP_AUDIO_TOTAL_STREAMS = 65;

const int CAP_PROP_AUDIO_SYNCHRONIZE = 66;

const int CAP_PROP_LRF_HAS_KEY_FRAME = 67;

const int CAP_PROP_CODEC_EXTRADATA_INDEX = 68;

const int CAP_PROP_FRAME_TYPE = 69;

const int CAP_PROP_N_THREADS = 70;

const int CV__CAP_PROP_LATEST = 71;

const int VIDEOWRITER_PROP_QUALITY = 1;

const int VIDEOWRITER_PROP_FRAMEBYTES = 2;

const int VIDEOWRITER_PROP_NSTRIPES = 3;

const int VIDEOWRITER_PROP_IS_COLOR = 4;

const int VIDEOWRITER_PROP_DEPTH = 5;

const int VIDEOWRITER_PROP_HW_ACCELERATION = 6;

const int VIDEOWRITER_PROP_HW_DEVICE = 7;

const int VIDEOWRITER_PROP_HW_ACCELERATION_USE_OPENCL = 8;

const int VIDEOWRITER_PROP_RAW_VIDEO = 9;

const int VIDEOWRITER_PROP_KEY_INTERVAL = 10;

const int VIDEOWRITER_PROP_KEY_FLAG = 11;

const int CV__VIDEOWRITER_PROP_LATEST = 12;

const int CAP_PROP_DC1394_OFF = -4;

const int CAP_PROP_DC1394_MODE_MANUAL = -3;

const int CAP_PROP_DC1394_MODE_AUTO = -2;

const int CAP_PROP_DC1394_MODE_ONE_PUSH_AUTO = -1;

const int CAP_PROP_DC1394_MAX = 31;

const int CAP_OPENNI_DEPTH_GENERATOR = -2147483648;

const int CAP_OPENNI_IMAGE_GENERATOR = 1073741824;

const int CAP_OPENNI_IR_GENERATOR = 536870912;

const int CAP_OPENNI_GENERATORS_MASK = -536870912;

const int CAP_PROP_OPENNI_OUTPUT_MODE = 100;

const int CAP_PROP_OPENNI_FRAME_MAX_DEPTH = 101;

const int CAP_PROP_OPENNI_BASELINE = 102;

const int CAP_PROP_OPENNI_FOCAL_LENGTH = 103;

const int CAP_PROP_OPENNI_REGISTRATION = 104;

const int CAP_PROP_OPENNI_REGISTRATION_ON = 104;

const int CAP_PROP_OPENNI_APPROX_FRAME_SYNC = 105;

const int CAP_PROP_OPENNI_MAX_BUFFER_SIZE = 106;

const int CAP_PROP_OPENNI_CIRCLE_BUFFER = 107;

const int CAP_PROP_OPENNI_MAX_TIME_DURATION = 108;

const int CAP_PROP_OPENNI_GENERATOR_PRESENT = 109;

const int CAP_PROP_OPENNI2_SYNC = 110;

const int CAP_PROP_OPENNI2_MIRROR = 111;

const int CAP_OPENNI_IMAGE_GENERATOR_PRESENT = 1073741933;

const int CAP_OPENNI_IMAGE_GENERATOR_OUTPUT_MODE = 1073741924;

const int CAP_OPENNI_DEPTH_GENERATOR_PRESENT = -2147483539;

const int CAP_OPENNI_DEPTH_GENERATOR_BASELINE = -2147483546;

const int CAP_OPENNI_DEPTH_GENERATOR_FOCAL_LENGTH = -2147483545;

const int CAP_OPENNI_DEPTH_GENERATOR_REGISTRATION = -2147483544;

const int CAP_OPENNI_DEPTH_GENERATOR_REGISTRATION_ON = -2147483544;

const int CAP_OPENNI_IR_GENERATOR_PRESENT = 536871021;

const int CAP_OPENNI_DEPTH_MAP = 0;

const int CAP_OPENNI_POINT_CLOUD_MAP = 1;

const int CAP_OPENNI_DISPARITY_MAP = 2;

const int CAP_OPENNI_DISPARITY_MAP_32F = 3;

const int CAP_OPENNI_VALID_DEPTH_MASK = 4;

const int CAP_OPENNI_BGR_IMAGE = 5;

const int CAP_OPENNI_GRAY_IMAGE = 6;

const int CAP_OPENNI_IR_IMAGE = 7;

const int CAP_OPENNI_VGA_30HZ = 0;

const int CAP_OPENNI_SXGA_15HZ = 1;

const int CAP_OPENNI_SXGA_30HZ = 2;

const int CAP_OPENNI_QVGA_30HZ = 3;

const int CAP_OPENNI_QVGA_60HZ = 4;

const int CAP_PROP_GSTREAMER_QUEUE_LENGTH = 200;

const int CAP_PROP_PVAPI_MULTICASTIP = 300;

const int CAP_PROP_PVAPI_FRAMESTARTTRIGGERMODE = 301;

const int CAP_PROP_PVAPI_DECIMATIONHORIZONTAL = 302;

const int CAP_PROP_PVAPI_DECIMATIONVERTICAL = 303;

const int CAP_PROP_PVAPI_BINNINGX = 304;

const int CAP_PROP_PVAPI_BINNINGY = 305;

const int CAP_PROP_PVAPI_PIXELFORMAT = 306;

const int CAP_PVAPI_FSTRIGMODE_FREERUN = 0;

const int CAP_PVAPI_FSTRIGMODE_SYNCIN1 = 1;

const int CAP_PVAPI_FSTRIGMODE_SYNCIN2 = 2;

const int CAP_PVAPI_FSTRIGMODE_FIXEDRATE = 3;

const int CAP_PVAPI_FSTRIGMODE_SOFTWARE = 4;

const int CAP_PVAPI_DECIMATION_OFF = 1;

const int CAP_PVAPI_DECIMATION_2OUTOF4 = 2;

const int CAP_PVAPI_DECIMATION_2OUTOF8 = 4;

const int CAP_PVAPI_DECIMATION_2OUTOF16 = 8;

const int CAP_PVAPI_PIXELFORMAT_MONO8 = 1;

const int CAP_PVAPI_PIXELFORMAT_MONO16 = 2;

const int CAP_PVAPI_PIXELFORMAT_BAYER8 = 3;

const int CAP_PVAPI_PIXELFORMAT_BAYER16 = 4;

const int CAP_PVAPI_PIXELFORMAT_RGB24 = 5;

const int CAP_PVAPI_PIXELFORMAT_BGR24 = 6;

const int CAP_PVAPI_PIXELFORMAT_RGBA32 = 7;

const int CAP_PVAPI_PIXELFORMAT_BGRA32 = 8;

const int CAP_PROP_XI_DOWNSAMPLING = 400;

const int CAP_PROP_XI_DATA_FORMAT = 401;

const int CAP_PROP_XI_OFFSET_X = 402;

const int CAP_PROP_XI_OFFSET_Y = 403;

const int CAP_PROP_XI_TRG_SOURCE = 404;

const int CAP_PROP_XI_TRG_SOFTWARE = 405;

const int CAP_PROP_XI_GPI_SELECTOR = 406;

const int CAP_PROP_XI_GPI_MODE = 407;

const int CAP_PROP_XI_GPI_LEVEL = 408;

const int CAP_PROP_XI_GPO_SELECTOR = 409;

const int CAP_PROP_XI_GPO_MODE = 410;

const int CAP_PROP_XI_LED_SELECTOR = 411;

const int CAP_PROP_XI_LED_MODE = 412;

const int CAP_PROP_XI_MANUAL_WB = 413;

const int CAP_PROP_XI_AUTO_WB = 414;

const int CAP_PROP_XI_AEAG = 415;

const int CAP_PROP_XI_EXP_PRIORITY = 416;

const int CAP_PROP_XI_AE_MAX_LIMIT = 417;

const int CAP_PROP_XI_AG_MAX_LIMIT = 418;

const int CAP_PROP_XI_AEAG_LEVEL = 419;

const int CAP_PROP_XI_TIMEOUT = 420;

const int CAP_PROP_XI_EXPOSURE = 421;

const int CAP_PROP_XI_EXPOSURE_BURST_COUNT = 422;

const int CAP_PROP_XI_GAIN_SELECTOR = 423;

const int CAP_PROP_XI_GAIN = 424;

const int CAP_PROP_XI_DOWNSAMPLING_TYPE = 426;

const int CAP_PROP_XI_BINNING_SELECTOR = 427;

const int CAP_PROP_XI_BINNING_VERTICAL = 428;

const int CAP_PROP_XI_BINNING_HORIZONTAL = 429;

const int CAP_PROP_XI_BINNING_PATTERN = 430;

const int CAP_PROP_XI_DECIMATION_SELECTOR = 431;

const int CAP_PROP_XI_DECIMATION_VERTICAL = 432;

const int CAP_PROP_XI_DECIMATION_HORIZONTAL = 433;

const int CAP_PROP_XI_DECIMATION_PATTERN = 434;

const int CAP_PROP_XI_TEST_PATTERN_GENERATOR_SELECTOR = 587;

const int CAP_PROP_XI_TEST_PATTERN = 588;

const int CAP_PROP_XI_IMAGE_DATA_FORMAT = 435;

const int CAP_PROP_XI_SHUTTER_TYPE = 436;

const int CAP_PROP_XI_SENSOR_TAPS = 437;

const int CAP_PROP_XI_AEAG_ROI_OFFSET_X = 439;

const int CAP_PROP_XI_AEAG_ROI_OFFSET_Y = 440;

const int CAP_PROP_XI_AEAG_ROI_WIDTH = 441;

const int CAP_PROP_XI_AEAG_ROI_HEIGHT = 442;

const int CAP_PROP_XI_BPC = 445;

const int CAP_PROP_XI_WB_KR = 448;

const int CAP_PROP_XI_WB_KG = 449;

const int CAP_PROP_XI_WB_KB = 450;

const int CAP_PROP_XI_WIDTH = 451;

const int CAP_PROP_XI_HEIGHT = 452;

const int CAP_PROP_XI_REGION_SELECTOR = 589;

const int CAP_PROP_XI_REGION_MODE = 595;

const int CAP_PROP_XI_LIMIT_BANDWIDTH = 459;

const int CAP_PROP_XI_SENSOR_DATA_BIT_DEPTH = 460;

const int CAP_PROP_XI_OUTPUT_DATA_BIT_DEPTH = 461;

const int CAP_PROP_XI_IMAGE_DATA_BIT_DEPTH = 462;

const int CAP_PROP_XI_OUTPUT_DATA_PACKING = 463;

const int CAP_PROP_XI_OUTPUT_DATA_PACKING_TYPE = 464;

const int CAP_PROP_XI_IS_COOLED = 465;

const int CAP_PROP_XI_COOLING = 466;

const int CAP_PROP_XI_TARGET_TEMP = 467;

const int CAP_PROP_XI_CHIP_TEMP = 468;

const int CAP_PROP_XI_HOUS_TEMP = 469;

const int CAP_PROP_XI_HOUS_BACK_SIDE_TEMP = 590;

const int CAP_PROP_XI_SENSOR_BOARD_TEMP = 596;

const int CAP_PROP_XI_CMS = 470;

const int CAP_PROP_XI_APPLY_CMS = 471;

const int CAP_PROP_XI_IMAGE_IS_COLOR = 474;

const int CAP_PROP_XI_COLOR_FILTER_ARRAY = 475;

const int CAP_PROP_XI_GAMMAY = 476;

const int CAP_PROP_XI_GAMMAC = 477;

const int CAP_PROP_XI_SHARPNESS = 478;

const int CAP_PROP_XI_CC_MATRIX_00 = 479;

const int CAP_PROP_XI_CC_MATRIX_01 = 480;

const int CAP_PROP_XI_CC_MATRIX_02 = 481;

const int CAP_PROP_XI_CC_MATRIX_03 = 482;

const int CAP_PROP_XI_CC_MATRIX_10 = 483;

const int CAP_PROP_XI_CC_MATRIX_11 = 484;

const int CAP_PROP_XI_CC_MATRIX_12 = 485;

const int CAP_PROP_XI_CC_MATRIX_13 = 486;

const int CAP_PROP_XI_CC_MATRIX_20 = 487;

const int CAP_PROP_XI_CC_MATRIX_21 = 488;

const int CAP_PROP_XI_CC_MATRIX_22 = 489;

const int CAP_PROP_XI_CC_MATRIX_23 = 490;

const int CAP_PROP_XI_CC_MATRIX_30 = 491;

const int CAP_PROP_XI_CC_MATRIX_31 = 492;

const int CAP_PROP_XI_CC_MATRIX_32 = 493;

const int CAP_PROP_XI_CC_MATRIX_33 = 494;

const int CAP_PROP_XI_DEFAULT_CC_MATRIX = 495;

const int CAP_PROP_XI_TRG_SELECTOR = 498;

const int CAP_PROP_XI_ACQ_FRAME_BURST_COUNT = 499;

const int CAP_PROP_XI_DEBOUNCE_EN = 507;

const int CAP_PROP_XI_DEBOUNCE_T0 = 508;

const int CAP_PROP_XI_DEBOUNCE_T1 = 509;

const int CAP_PROP_XI_DEBOUNCE_POL = 510;

const int CAP_PROP_XI_LENS_MODE = 511;

const int CAP_PROP_XI_LENS_APERTURE_VALUE = 512;

const int CAP_PROP_XI_LENS_FOCUS_MOVEMENT_VALUE = 513;

const int CAP_PROP_XI_LENS_FOCUS_MOVE = 514;

const int CAP_PROP_XI_LENS_FOCUS_DISTANCE = 515;

const int CAP_PROP_XI_LENS_FOCAL_LENGTH = 516;

const int CAP_PROP_XI_LENS_FEATURE_SELECTOR = 517;

const int CAP_PROP_XI_LENS_FEATURE = 518;

const int CAP_PROP_XI_DEVICE_MODEL_ID = 521;

const int CAP_PROP_XI_DEVICE_SN = 522;

const int CAP_PROP_XI_IMAGE_DATA_FORMAT_RGB32_ALPHA = 529;

const int CAP_PROP_XI_IMAGE_PAYLOAD_SIZE = 530;

const int CAP_PROP_XI_TRANSPORT_PIXEL_FORMAT = 531;

const int CAP_PROP_XI_SENSOR_CLOCK_FREQ_HZ = 532;

const int CAP_PROP_XI_SENSOR_CLOCK_FREQ_INDEX = 533;

const int CAP_PROP_XI_SENSOR_OUTPUT_CHANNEL_COUNT = 534;

const int CAP_PROP_XI_FRAMERATE = 535;

const int CAP_PROP_XI_COUNTER_SELECTOR = 536;

const int CAP_PROP_XI_COUNTER_VALUE = 537;

const int CAP_PROP_XI_ACQ_TIMING_MODE = 538;

const int CAP_PROP_XI_AVAILABLE_BANDWIDTH = 539;

const int CAP_PROP_XI_BUFFER_POLICY = 540;

const int CAP_PROP_XI_LUT_EN = 541;

const int CAP_PROP_XI_LUT_INDEX = 542;

const int CAP_PROP_XI_LUT_VALUE = 543;

const int CAP_PROP_XI_TRG_DELAY = 544;

const int CAP_PROP_XI_TS_RST_MODE = 545;

const int CAP_PROP_XI_TS_RST_SOURCE = 546;

const int CAP_PROP_XI_IS_DEVICE_EXIST = 547;

const int CAP_PROP_XI_ACQ_BUFFER_SIZE = 548;

const int CAP_PROP_XI_ACQ_BUFFER_SIZE_UNIT = 549;

const int CAP_PROP_XI_ACQ_TRANSPORT_BUFFER_SIZE = 550;

const int CAP_PROP_XI_BUFFERS_QUEUE_SIZE = 551;

const int CAP_PROP_XI_ACQ_TRANSPORT_BUFFER_COMMIT = 552;

const int CAP_PROP_XI_RECENT_FRAME = 553;

const int CAP_PROP_XI_DEVICE_RESET = 554;

const int CAP_PROP_XI_COLUMN_FPN_CORRECTION = 555;

const int CAP_PROP_XI_ROW_FPN_CORRECTION = 591;

const int CAP_PROP_XI_SENSOR_MODE = 558;

const int CAP_PROP_XI_HDR = 559;

const int CAP_PROP_XI_HDR_KNEEPOINT_COUNT = 560;

const int CAP_PROP_XI_HDR_T1 = 561;

const int CAP_PROP_XI_HDR_T2 = 562;

const int CAP_PROP_XI_KNEEPOINT1 = 563;

const int CAP_PROP_XI_KNEEPOINT2 = 564;

const int CAP_PROP_XI_IMAGE_BLACK_LEVEL = 565;

const int CAP_PROP_XI_HW_REVISION = 571;

const int CAP_PROP_XI_DEBUG_LEVEL = 572;

const int CAP_PROP_XI_AUTO_BANDWIDTH_CALCULATION = 573;

const int CAP_PROP_XI_FFS_FILE_ID = 594;

const int CAP_PROP_XI_FFS_FILE_SIZE = 580;

const int CAP_PROP_XI_FREE_FFS_SIZE = 581;

const int CAP_PROP_XI_USED_FFS_SIZE = 582;

const int CAP_PROP_XI_FFS_ACCESS_KEY = 583;

const int CAP_PROP_XI_SENSOR_FEATURE_SELECTOR = 585;

const int CAP_PROP_XI_SENSOR_FEATURE_VALUE = 586;

const int CAP_PROP_ARAVIS_AUTOTRIGGER = 600;

const int CAP_PROP_IOS_DEVICE_FOCUS = 9001;

const int CAP_PROP_IOS_DEVICE_EXPOSURE = 9002;

const int CAP_PROP_IOS_DEVICE_FLASH = 9003;

const int CAP_PROP_IOS_DEVICE_WHITEBALANCE = 9004;

const int CAP_PROP_IOS_DEVICE_TORCH = 9005;

const int CAP_PROP_GIGA_FRAME_OFFSET_X = 10001;

const int CAP_PROP_GIGA_FRAME_OFFSET_Y = 10002;

const int CAP_PROP_GIGA_FRAME_WIDTH_MAX = 10003;

const int CAP_PROP_GIGA_FRAME_HEIGH_MAX = 10004;

const int CAP_PROP_GIGA_FRAME_SENS_WIDTH = 10005;

const int CAP_PROP_GIGA_FRAME_SENS_HEIGH = 10006;

const int CAP_PROP_INTELPERC_PROFILE_COUNT = 11001;

const int CAP_PROP_INTELPERC_PROFILE_IDX = 11002;

const int CAP_PROP_INTELPERC_DEPTH_LOW_CONFIDENCE_VALUE = 11003;

const int CAP_PROP_INTELPERC_DEPTH_SATURATION_VALUE = 11004;

const int CAP_PROP_INTELPERC_DEPTH_CONFIDENCE_THRESHOLD = 11005;

const int CAP_PROP_INTELPERC_DEPTH_FOCAL_LENGTH_HORZ = 11006;

const int CAP_PROP_INTELPERC_DEPTH_FOCAL_LENGTH_VERT = 11007;

const int CAP_INTELPERC_DEPTH_GENERATOR = 536870912;

const int CAP_INTELPERC_IMAGE_GENERATOR = 268435456;

const int CAP_INTELPERC_IR_GENERATOR = 134217728;

const int CAP_INTELPERC_GENERATORS_MASK = 939524096;

const int CAP_INTELPERC_DEPTH_MAP = 0;

const int CAP_INTELPERC_UVDEPTH_MAP = 1;

const int CAP_INTELPERC_IR_MAP = 2;

const int CAP_INTELPERC_IMAGE = 3;

const int CAP_PROP_GPHOTO2_PREVIEW = 17001;

const int CAP_PROP_GPHOTO2_WIDGET_ENUMERATE = 17002;

const int CAP_PROP_GPHOTO2_RELOAD_CONFIG = 17003;

const int CAP_PROP_GPHOTO2_RELOAD_ON_CHANGE = 17004;

const int CAP_PROP_GPHOTO2_COLLECT_MSGS = 17005;

const int CAP_PROP_GPHOTO2_FLUSH_MSGS = 17006;

const int CAP_PROP_SPEED = 17007;

const int CAP_PROP_APERTURE = 17008;

const int CAP_PROP_EXPOSUREPROGRAM = 17009;

const int CAP_PROP_VIEWFINDER = 17010;

const int CAP_PROP_IMAGES_BASE = 18000;

const int CAP_PROP_IMAGES_LAST = 19000;
