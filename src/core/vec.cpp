#include "vec.h"
#include <string.h>
#include <vector>

CvStatus VecPoint_New(VecPoint *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<cv::Point>()};
  END_WRAP
}

CvStatus VecPoint_NewFromPointer(Point *points, int length, VecPoint *rval)
{
  BEGIN_WRAP
  auto vec = new std::vector<cv::Point>();
  for (int i = 0; i < length; i++) {
    vec->push_back(cv::Point(points[i].x, points[i].y));
  }
  *rval = {vec};
  END_WRAP
}

CvStatus VecPoint_NewFromMat(Mat mat, VecPoint *rval)
{
  BEGIN_WRAP
  std::vector<cv::Point> *pts = new std::vector<cv::Point>;
  *pts = (std::vector<cv::Point>)*mat.ptr;
  *rval = {pts};
  END_WRAP
}

CvStatus VecPoint_NewFromVec(VecPoint vec, VecPoint *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<cv::Point>(*vec.ptr)};
  END_WRAP
}

CvStatus VecPoint_At(VecPoint vec, int idx, Point *rval)
{
  BEGIN_WRAP
  auto p = vec.ptr->at(idx);
  *rval = {p.x, p.y};
  END_WRAP
}

CvStatus VecPoint_Append(VecPoint vec, Point p)
{
  BEGIN_WRAP
  vec.ptr->push_back(cv::Point(p.x, p.y));
  END_WRAP
}

CvStatus VecPoint_Size(VecPoint vec, int *rval)
{
  BEGIN_WRAP
  *rval = static_cast<int>(vec.ptr->size());
  END_WRAP
}

void VecPoint_Close(VecPoint *vec)
{
  vec->ptr->clear();
  delete CVD_TYPECAST_CPP(VecPoint, vec);
  vec->ptr = nullptr;
}

CvStatus VecVecPoint_New(VecVecPoint *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<std::vector<cv::Point>>()};
  END_WRAP
}

CvStatus VecVecPoint_NewFromPointer(VecPoint *points, int length, VecVecPoint *rval)
{
  BEGIN_WRAP
  VecVecPoint_CPP v = new std::vector<std::vector<cv::Point>>();
  for (int i = 0; i < length; i++) {
    auto pv = points[i];
    v->push_back(*pv.ptr);
  }
  *rval = {v};
  END_WRAP
}

CvStatus VecVecPoint_NewFromVec(VecVecPoint vec, VecVecPoint *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<std::vector<cv::Point>>(*vec.ptr)};
  END_WRAP
}

CvStatus VecVecPoint_At(VecVecPoint vec, int idx, VecPoint *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<cv::Point>(vec.ptr->at(idx))};
  END_WRAP
}

CvStatus VecVecPoint_Append(VecVecPoint vec, VecPoint pv)
{
  BEGIN_WRAP
  vec.ptr->push_back(*pv.ptr);
  END_WRAP
}

CvStatus VecVecPoint_Size(VecVecPoint vec, int *rval)
{
  BEGIN_WRAP
  *rval = static_cast<int>(vec.ptr->size());
  END_WRAP
}

void VecVecPoint_Close(VecVecPoint *vec)
{
  vec->ptr->clear();
  delete CVD_TYPECAST_CPP(VecVecPoint, vec);
  vec->ptr = nullptr;
}

CvStatus VecPoint2f_New(VecPoint2f *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<cv::Point2f>()};
  END_WRAP
}

void VecPoint2f_Close(VecPoint2f *vec)
{
  vec->ptr->clear();
  delete CVD_TYPECAST_CPP(VecPoint2f, vec);
  vec->ptr = nullptr;
}

CvStatus VecPoint2f_NewFromPointer(Point2f *points, int length, VecPoint2f *rval)
{
  BEGIN_WRAP
  auto vec = new std::vector<cv::Point2f>();
  for (int i = 0; i < length; i++) {
    vec->push_back(cv::Point2f(points[i].x, points[i].y));
  }
  *rval = {vec};
  END_WRAP
}

CvStatus VecPoint2f_NewFromMat(Mat mat, VecPoint2f *rval)
{
  BEGIN_WRAP
  std::vector<cv::Point2f> *pts = new std::vector<cv::Point2f>;
  *pts = (std::vector<cv::Point2f>)*mat.ptr;
  *rval = {pts};
  END_WRAP
}

CvStatus VecPoint2f_NewFromVec(VecPoint2f vec, VecPoint2f *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<cv::Point2f>(*vec.ptr)};
  END_WRAP
}

CvStatus VecPoint2f_At(VecPoint2f vec, int idx, Point2f *rval)
{
  BEGIN_WRAP
  auto p = vec.ptr->at(idx);
  *rval = {p.x, p.y};
  END_WRAP
}

CvStatus VecPoint2f_Append(VecPoint2f vec, Point2f p)
{
  BEGIN_WRAP
  vec.ptr->push_back(cv::Point2f(p.x, p.y));
  END_WRAP
}

CvStatus VecPoint2f_Size(VecPoint2f vec, int *rval)
{
  BEGIN_WRAP
  *rval = static_cast<int>(vec.ptr->size());
  END_WRAP
}

CvStatus VecVecPoint2f_New(VecVecPoint2f *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<std::vector<cv::Point2f>>()};
  END_WRAP
}

CvStatus VecVecPoint2f_NewFromPointer(VecPoint2f *points, int length, VecVecPoint2f *rval)
{
  BEGIN_WRAP
  VecVecPoint2f_CPP v = new std::vector<std::vector<cv::Point2f>>();
  for (int i = 0; i < length; i++) {
    auto pv = points[i];
    v->push_back(*pv.ptr);
  }
  *rval = {v};
  END_WRAP
}

CvStatus VecVecPoint2f_NewFromVec(VecVecPoint2f vec, VecVecPoint2f *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<std::vector<cv::Point2f>>(*vec.ptr)};
  END_WRAP
}

CvStatus VecVecPoint2f_At(VecVecPoint2f vec, int idx, VecPoint2f *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<cv::Point2f>(vec.ptr->at(idx))};
  END_WRAP
}

CvStatus VecVecPoint2f_Append(VecVecPoint2f vec, VecPoint2f pv)
{
  BEGIN_WRAP
  vec.ptr->push_back((std::vector<cv::Point2f>)*pv.ptr);
  END_WRAP
}

CvStatus VecVecPoint2f_Size(VecVecPoint2f vec, int *rval)
{
  BEGIN_WRAP
  *rval = static_cast<int>(vec.ptr->size());
  END_WRAP
}

void VecVecPoint2f_Close(VecVecPoint2f *vec)
{
  vec->ptr->clear();
  delete CVD_TYPECAST_CPP(VecVecPoint2f, vec);
  vec->ptr = nullptr;
}

CvStatus VecPoint3f_New(VecPoint3f *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<cv::Point3f>()};
  END_WRAP
}

void VecPoint3f_Close(VecPoint3f *vec)
{
  vec->ptr->clear();
  delete CVD_TYPECAST_CPP(VecVecPoint3f, vec);
  vec->ptr = nullptr;
}

CvStatus VecPoint3f_NewFromPointer(Point3f *points, int length, VecPoint3f *rval)
{
  BEGIN_WRAP
  auto vec = new std::vector<cv::Point3f>();
  for (int i = 0; i < length; i++) {
    vec->push_back(cv::Point3f(points[i].x, points[i].y, points[i].z));
  }
  *rval = {vec};
  END_WRAP
}

CvStatus VecPoint3f_NewFromMat(Mat mat, VecPoint3f *rval)
{
  BEGIN_WRAP
  std::vector<cv::Point3f> *pts = new std::vector<cv::Point3f>;
  *pts = (std::vector<cv::Point3f>)*mat.ptr;
  *rval = {pts};
  END_WRAP
}

CvStatus VecPoint3f_NewFromVec(VecPoint3f vec, VecPoint3f *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<cv::Point3f>(*vec.ptr)};
  END_WRAP
}

CvStatus VecPoint3f_At(VecPoint3f vec, int idx, Point3f *rval)
{
  BEGIN_WRAP
  auto p = vec.ptr->at(idx);
  *rval = {p.x, p.y, p.z};
  END_WRAP
}

CvStatus VecPoint3f_Append(VecPoint3f vec, Point3f p)
{
  BEGIN_WRAP
  vec.ptr->push_back(cv::Point3f(p.x, p.y, p.z));
  END_WRAP
}

CvStatus VecPoint3f_Size(VecPoint3f vec, int *rval)
{
  BEGIN_WRAP
  *rval = static_cast<int>(vec.ptr->size());
  END_WRAP
}

CvStatus VecVecPoint3f_New(VecVecPoint3f *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<std::vector<cv::Point3f>>()};
  END_WRAP
}

CvStatus VecVecPoint3f_NewFromPointer(VecPoint3f *points, int length, VecVecPoint3f *rval)
{
  BEGIN_WRAP
  VecVecPoint3f_CPP v = new std::vector<std::vector<cv::Point3f>>();
  for (int i = 0; i < length; i++) {
    auto pv = points[i];
    v->push_back(*pv.ptr);
  }
  *rval = {v};
  END_WRAP
}

CvStatus VecVecPoint3f_NewFromVec(VecVecPoint3f vec, VecVecPoint3f *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<std::vector<cv::Point3f>>(*vec.ptr)};
  END_WRAP
}

CvStatus VecVecPoint3f_At(VecVecPoint3f vec, int idx, VecPoint3f *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<cv::Point3f>(vec.ptr->at(idx))};
  END_WRAP
}

CvStatus VecVecPoint3f_Append(VecVecPoint3f vec, VecPoint3f pv)
{
  BEGIN_WRAP
  vec.ptr->push_back((std::vector<cv::Point3f>)*pv.ptr);
  END_WRAP
}

CvStatus VecVecPoint3f_Size(VecVecPoint3f vec, int *rval)
{
  BEGIN_WRAP
  *rval = static_cast<int>(vec.ptr->size());
  END_WRAP
}

void VecVecPoint3f_Close(VecVecPoint3f *vec)
{
  vec->ptr->clear();
  delete CVD_TYPECAST_CPP(VecVecPoint3f, vec);
  vec->ptr = nullptr;
}

CvStatus VecUChar_New(VecUChar *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<uchar>()};
  END_WRAP
}

CvStatus VecUChar_NewFromPointer(uchar *p, int length, VecUChar *rval)
{
  BEGIN_WRAP
  VecUChar_CPP v = new std::vector<uchar>();
  for (int i = 0; i < length; i++) {
    v->push_back(p[i]);
  }
  *rval = {v};
  END_WRAP
}

CvStatus VecUChar_NewFromVec(VecUChar vec, VecUChar *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<uchar>(*vec.ptr)};
  END_WRAP
}

CvStatus VecUChar_Append(VecUChar vec, uchar i)
{
  BEGIN_WRAP
  vec.ptr->push_back(i);
  END_WRAP
}

CvStatus VecUChar_At(VecUChar vec, int idx, uchar *rval)
{
  BEGIN_WRAP
  *rval = vec.ptr->at(idx);
  END_WRAP
}

CvStatus VecUChar_Size(VecUChar vec, int *rval)
{
  BEGIN_WRAP
  *rval = static_cast<int>(vec.ptr->size());
  END_WRAP
}

void VecUChar_Close(VecUChar *vec)
{
  vec->ptr->clear();
  delete CVD_TYPECAST_CPP(VecUChar, vec);
  vec->ptr = nullptr;
}

CvStatus VecChar_New(VecChar *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<char>()};
  END_WRAP
}

CvStatus VecChar_NewFromPointer(const char *p, int length, VecChar *rval)
{
  BEGIN_WRAP
  VecChar_CPP v = new std::vector<char>();
  for (int i = 0; i < length; i++) {
    v->push_back(p[i]);
  }
  *rval = {v};
  END_WRAP
}

CvStatus VecChar_NewFromVec(VecChar vec, VecChar *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<char>(*vec.ptr)};
  END_WRAP
}

CvStatus VecChar_Append(VecChar vec, char i)
{
  BEGIN_WRAP
  vec.ptr->push_back(i);
  END_WRAP
}

CvStatus VecChar_At(VecChar vec, int idx, char *rval)
{
  BEGIN_WRAP
  *rval = vec.ptr->at(idx);
  END_WRAP
}

CvStatus VecChar_Size(VecChar vec, int *rval)
{
  BEGIN_WRAP
  *rval = static_cast<int>(vec.ptr->size());
  END_WRAP
}

CvStatus VecChar_ToString(VecChar vec, char **rval, int *length)
{
  BEGIN_WRAP
  *length = static_cast<int>(vec.ptr->size());
  char *tempBuffer = new char[*length + 1];
  std::memcpy(tempBuffer, vec.ptr->data(), *length);
  tempBuffer[*length] = '\0';
  *rval = tempBuffer;
  END_WRAP
}

void VecChar_Close(VecChar *vec)
{
  vec->ptr->clear();
  delete CVD_TYPECAST_CPP(VecChar, vec);
  vec->ptr = nullptr;
}

CvStatus VecVecChar_New(VecVecChar *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<std::vector<char>>()};
  END_WRAP
}
CvStatus VecVecChar_NewFromVec(VecVecChar vec, VecVecChar *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<std::vector<char>>(*vec.ptr)};
  END_WRAP
}
CvStatus VecVecChar_Append(VecVecChar vec, VecChar v)
{
  BEGIN_WRAP
  vec.ptr->push_back(*v.ptr);
  END_WRAP
}
CvStatus VecVecChar_Append_Str(VecVecChar vec, const char *str)
{
  BEGIN_WRAP
  int len = strlen(str);

  std::vector<char> v(str, str + len);
  vec.ptr->push_back(v);
  END_WRAP
}
CvStatus VecVecChar_At(VecVecChar vec, int idx, VecChar *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<char>(vec.ptr->at(idx))};
  END_WRAP
}
CvStatus VecVecChar_At_Str(VecVecChar vec, int idx, char **rval, int *length)
{
  BEGIN_WRAP
  auto str = vec.ptr->at(idx);
  *length = static_cast<int>(str.size());
  char *tempBuffer = new char[*length + 1];
  std::memcpy(tempBuffer, str.data(), *length);
  tempBuffer[*length] = '\0';
  *rval = tempBuffer;
  END_WRAP
}
CvStatus VecVecChar_Size(VecVecChar vec, int *rval)
{
  BEGIN_WRAP
  *rval = vec.ptr->size();
  END_WRAP
}
void VecVecChar_Close(VecVecChar *vec)
{
  vec->ptr->clear();
  delete CVD_TYPECAST_CPP(VecVecChar, vec);
  vec->ptr = nullptr;
}

CvStatus VecInt_New(VecInt *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<int>()};
  END_WRAP
}

CvStatus VecInt_NewFromPointer(int *p, int length, VecInt *rval)
{
  BEGIN_WRAP
  VecInt_CPP v = new std::vector<int>();
  for (int i = 0; i < length; i++) {
    v->push_back(p[i]);
  }
  *rval = {v};
  END_WRAP
}

CvStatus VecInt_NewFromVec(VecInt vec, VecInt *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<int>(*vec.ptr)};
  END_WRAP
}

CvStatus VecInt_Append(VecInt vec, int i)
{
  BEGIN_WRAP
  vec.ptr->push_back(i);
  END_WRAP
}

CvStatus VecInt_At(VecInt vec, int idx, int *rval)
{
  BEGIN_WRAP
  *rval = vec.ptr->at(idx);
  END_WRAP
}

CvStatus VecInt_Size(VecInt vec, int *rval)
{
  BEGIN_WRAP
  *rval = static_cast<int>(vec.ptr->size());
  END_WRAP
}

void VecInt_Close(VecInt *vec)
{
  vec->ptr->clear();
  delete CVD_TYPECAST_CPP(VecInt, vec);
  vec->ptr = nullptr;
}

CvStatus VecFloat_New(VecFloat *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<float>()};
  END_WRAP
}

CvStatus VecFloat_NewFromPointer(float *p, int length, VecFloat *rval)
{
  BEGIN_WRAP
  VecFloat_CPP v = new std::vector<float>();
  for (int i = 0; i < length; i++) {
    v->push_back(p[i]);
  }
  *rval = {v};
  END_WRAP
}

CvStatus VecFloat_NewFromVec(VecFloat vec, VecFloat *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<float>(*vec.ptr)};
  END_WRAP
}

CvStatus VecFloat_Append(VecFloat vec, float f)
{
  BEGIN_WRAP
  vec.ptr->push_back(f);
  END_WRAP
}

CvStatus VecFloat_At(VecFloat vec, int idx, float *rval)
{
  BEGIN_WRAP
  *rval = vec.ptr->at(idx);
  END_WRAP
}

CvStatus VecFloat_Size(VecFloat vec, int *rval)
{
  BEGIN_WRAP
  *rval = static_cast<int>(vec.ptr->size());
  END_WRAP
}

void VecFloat_Close(VecFloat *vec)
{
  vec->ptr->clear();
  delete CVD_TYPECAST_CPP(VecFloat, vec);
  vec->ptr = nullptr;
}

CvStatus VecDouble_New(VecDouble *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<double>()};
  END_WRAP
}

CvStatus VecDouble_NewFromPointer(double *p, int length, VecDouble *rval)
{
  BEGIN_WRAP
  VecDouble_CPP v = new std::vector<double>();
  for (int i = 0; i < length; i++) {
    v->push_back(p[i]);
  }
  *rval = {v};
  END_WRAP
}

CvStatus VecDouble_NewFromVec(VecDouble vec, VecDouble *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<double>(*vec.ptr)};
  END_WRAP
}

CvStatus VecDouble_Append(VecDouble vec, double d)
{
  BEGIN_WRAP
  vec.ptr->push_back(d);
  END_WRAP
}

CvStatus VecDouble_At(VecDouble vec, int idx, double *rval)
{
  BEGIN_WRAP
  *rval = vec.ptr->at(idx);
  END_WRAP
}

CvStatus VecDouble_Size(VecDouble vec, int *rval)
{
  BEGIN_WRAP
  *rval = static_cast<int>(vec.ptr->size());
  END_WRAP
}

void VecDouble_Close(VecDouble *vec)
{
  vec->ptr->clear();
  delete CVD_TYPECAST_CPP(VecDouble, vec);
  vec->ptr = nullptr;
}

CvStatus VecMat_New(VecMat *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<cv::Mat>()};
  END_WRAP
}

CvStatus VecMat_NewFromPointer(Mat *mats, int length, VecMat *rval)
{
  BEGIN_WRAP
  VecMat_CPP v = new std::vector<cv::Mat>();
  for (int i = 0; i < length; i++) {
    v->push_back(*(mats[i].ptr));
  }
  *rval = {v};
  END_WRAP
}

CvStatus VecMat_NewFromVec(VecMat vec, VecMat *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<cv::Mat>(*vec.ptr)};
  END_WRAP
}

CvStatus VecMat_Append(VecMat vec, Mat mat)
{
  BEGIN_WRAP
  vec.ptr->push_back(*mat.ptr);
  END_WRAP
}

CvStatus VecMat_At(VecMat vec, int i, Mat *rval)
{
  BEGIN_WRAP
  *rval = {new cv::Mat(vec.ptr->at(i))};
  END_WRAP
}

CvStatus VecMat_Size(VecMat vec, int *rval)
{
  BEGIN_WRAP
  *rval = static_cast<int>(vec.ptr->size());
  END_WRAP
}

void VecMat_Close(VecMat *vec)
{
  vec->ptr->clear();
  delete CVD_TYPECAST_CPP(VecMat, vec);
  vec->ptr = nullptr;
}

CvStatus VecRect_New(VecRect *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<cv::Rect>()};
  END_WRAP
}

CvStatus VecRect_NewFromPointer(Rect *rects, int length, VecRect *rval)
{
  BEGIN_WRAP
  VecRect_CPP v = new std::vector<cv::Rect>();
  for (int i = 0; i < length; i++) {
    v->push_back(cv::Rect(rects[i].x, rects[i].y, rects[i].width, rects[i].height));
  }
  *rval = {v};
  END_WRAP
}

CvStatus VecRect_NewFromVec(VecRect vec, VecRect *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<cv::Rect>(*vec.ptr)};
  END_WRAP
}

CvStatus VecRect_At(VecRect vec, int idx, Rect *rval)
{
  BEGIN_WRAP
  auto r = vec.ptr->at(idx);
  *rval = {r.x, r.y, r.width, r.height};
  END_WRAP
}

CvStatus VecRect_Append(VecRect vec, Rect rect)
{
  BEGIN_WRAP
  vec.ptr->push_back(cv::Rect(rect.x, rect.y, rect.width, rect.height));
  END_WRAP
}

CvStatus VecRect_Size(VecRect vec, int *rval)
{
  BEGIN_WRAP
  *rval = static_cast<int>(vec.ptr->size());
  END_WRAP
}

void VecRect_Close(VecRect *vec)
{
  vec->ptr->clear();
  delete CVD_TYPECAST_CPP(VecRect, vec);
  vec->ptr = nullptr;
}

CvStatus VecKeyPoint_New(VecKeyPoint *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<cv::KeyPoint>()};
  END_WRAP
}

CvStatus VecKeyPoint_NewFromPointer(KeyPoint *keypoints, int length, VecKeyPoint *rval)
{
  BEGIN_WRAP
  VecKeyPoint_CPP v = new std::vector<cv::KeyPoint>();
  for (int i = 0; i < length; i++) {
    auto kp = keypoints[i];
    v->push_back(cv::KeyPoint(kp.x, kp.y, kp.size, kp.angle, kp.response, kp.octave, kp.classID));
  }
  *rval = {v};
  END_WRAP
}

CvStatus VecKeyPoint_NewFromVec(VecKeyPoint vec, VecKeyPoint *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<cv::KeyPoint>(*vec.ptr)};
  END_WRAP
}

CvStatus VecKeyPoint_Append(VecKeyPoint vec, KeyPoint kp)
{
  BEGIN_WRAP
  vec.ptr->push_back(cv::KeyPoint(kp.x, kp.y, kp.size, kp.angle, kp.response, kp.octave, kp.classID));
  END_WRAP
}

CvStatus VecKeyPoint_At(VecKeyPoint vec, int idx, KeyPoint *rval)
{
  BEGIN_WRAP
  auto kp = vec.ptr->at(idx);
  *rval = {kp.pt.x, kp.pt.y, kp.size, kp.angle, kp.response, kp.octave, kp.class_id};
  END_WRAP
}

CvStatus VecKeyPoint_Size(VecKeyPoint vec, int *rval)
{
  BEGIN_WRAP
  *rval = static_cast<int>(vec.ptr->size());
  END_WRAP
}

void VecKeyPoint_Close(VecKeyPoint *vec)
{
  vec->ptr->clear();
  delete CVD_TYPECAST_CPP(VecKeyPoint, vec);
  vec->ptr = nullptr;
}

CvStatus VecDMatch_New(VecDMatch *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<cv::DMatch>()};
  END_WRAP
}

CvStatus VecDMatch_NewFromPointer(DMatch *matches, int length, VecDMatch *rval)
{
  BEGIN_WRAP
  VecDMatch_CPP v = new std::vector<cv::DMatch>();
  for (int i = 0; i < length; i++) {
    auto dm = matches[i];
    v->push_back(cv::DMatch(dm.queryIdx, dm.trainIdx, dm.imgIdx, dm.distance));
  }
  *rval = {v};
  END_WRAP
}

CvStatus VecDMatch_NewFromVec(VecDMatch vec, VecDMatch *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<cv::DMatch>(*vec.ptr)};
  END_WRAP
}

CvStatus VecDMatch_Append(VecDMatch vec, DMatch dm)
{
  BEGIN_WRAP
  vec.ptr->push_back(cv::DMatch(dm.queryIdx, dm.trainIdx, dm.imgIdx, dm.distance));
  END_WRAP
}

CvStatus VecDMatch_At(VecDMatch vec, int idx, DMatch *rval)
{
  BEGIN_WRAP
  auto dm = vec.ptr->at(idx);
  *rval = {dm.queryIdx, dm.trainIdx, dm.imgIdx, dm.distance};
  END_WRAP
}

CvStatus VecDMatch_Size(VecDMatch vec, int *rval)
{
  BEGIN_WRAP
  *rval = static_cast<int>(vec.ptr->size());
  END_WRAP
}

void VecDMatch_Close(VecDMatch *vec)
{
  vec->ptr->clear();
  delete CVD_TYPECAST_CPP(VecDMatch, vec);
  vec->ptr = nullptr;
}

CvStatus VecVecDMatch_New(VecVecDMatch *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<std::vector<cv::DMatch>>()};
  END_WRAP
}

CvStatus VecVecDMatch_NewFromPointer(VecDMatch *matches, int length, VecVecDMatch *rval)
{
  BEGIN_WRAP
  VecVecDMatch_CPP v = new std::vector<std::vector<cv::DMatch>>();
  for (int i = 0; i < length; i++) {
    auto dm = matches[i];
    v->push_back(*dm.ptr);
  }
  END_WRAP
}

CvStatus VecVecDMatch_NewFromVec(VecVecDMatch vec, VecVecDMatch *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<std::vector<cv::DMatch>>(*vec.ptr)};
  END_WRAP
}

CvStatus VecVecDMatch_At(VecVecDMatch vec, int idx, VecDMatch *rval)
{
  BEGIN_WRAP
  *rval = {new std::vector<cv::DMatch>(vec.ptr->at(idx))};
  END_WRAP
}

CvStatus VecVecDMatch_Append(VecVecDMatch vec, VecDMatch dm)
{
  BEGIN_WRAP
  vec.ptr->push_back(*dm.ptr);
  END_WRAP
}

CvStatus VecVecDMatch_Size(VecVecDMatch vec, int *rval)
{
  BEGIN_WRAP
  *rval = static_cast<int>(vec.ptr->size());
  END_WRAP
}

void VecVecDMatch_Close(VecVecDMatch *vec)
{
  vec->ptr->clear();
  delete CVD_TYPECAST_CPP(VecVecDMatch, vec);
  vec->ptr = nullptr;
}
