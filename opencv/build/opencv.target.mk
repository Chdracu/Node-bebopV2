# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := opencv
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=opencv' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-I/usr/include/opencv \
	-Wall \
	-g \
	-O0 \
	-coverage

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=gnu++0x

INCS_Debug := \
	-I/usr/include/nodejs/include/node \
	-I/usr/include/nodejs/src \
	-I/usr/include/nodejs/deps/uv/include \
	-I/usr/include/nodejs/deps/v8/include \
	-I$(srcdir)/-I/usr/include/opencv \
	-I$(srcdir)/../nan

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=opencv' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-I/usr/include/opencv \
	-Wall \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=gnu++0x

INCS_Release := \
	-I/usr/include/nodejs/include/node \
	-I/usr/include/nodejs/src \
	-I/usr/include/nodejs/deps/uv/include \
	-I/usr/include/nodejs/deps/v8/include \
	-I$(srcdir)/-I/usr/include/opencv \
	-I$(srcdir)/../nan

OBJS := \
	$(obj).target/$(TARGET)/src/init.o \
	$(obj).target/$(TARGET)/src/Matrix.o \
	$(obj).target/$(TARGET)/src/OpenCV.o \
	$(obj).target/$(TARGET)/src/CascadeClassifierWrap.o \
	$(obj).target/$(TARGET)/src/Contours.o \
	$(obj).target/$(TARGET)/src/Point.o \
	$(obj).target/$(TARGET)/src/VideoCaptureWrap.o \
	$(obj).target/$(TARGET)/src/VideoWriterWrap.o \
	$(obj).target/$(TARGET)/src/CamShift.o \
	$(obj).target/$(TARGET)/src/HighGUI.o \
	$(obj).target/$(TARGET)/src/FaceRecognizer.o \
	$(obj).target/$(TARGET)/src/Features2d.o \
	$(obj).target/$(TARGET)/src/BackgroundSubtractor.o \
	$(obj).target/$(TARGET)/src/Constants.o \
	$(obj).target/$(TARGET)/src/Calib3D.o \
	$(obj).target/$(TARGET)/src/ImgProc.o \
	$(obj).target/$(TARGET)/src/Stereo.o \
	$(obj).target/$(TARGET)/src/LDAWrap.o \
	$(obj).target/$(TARGET)/src/Histogram.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64 \
	-coverage

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS := \
	-lopencv_shape \
	-lopencv_stitching \
	-lopencv_superres \
	-lopencv_videostab \
	-lopencv_aruco \
	-lopencv_bgsegm \
	-lopencv_bioinspired \
	-lopencv_ccalib \
	-lopencv_datasets \
	-lopencv_dpm \
	-lopencv_face \
	-lopencv_freetype \
	-lopencv_fuzzy \
	-lopencv_hdf \
	-lopencv_line_descriptor \
	-lopencv_optflow \
	-lopencv_video \
	-lopencv_plot \
	-lopencv_reg \
	-lopencv_saliency \
	-lopencv_stereo \
	-lopencv_structured_light \
	-lopencv_phase_unwrapping \
	-lopencv_rgbd \
	-lopencv_viz \
	-lopencv_surface_matching \
	-lopencv_text \
	-lopencv_ximgproc \
	-lopencv_calib3d \
	-lopencv_features2d \
	-lopencv_flann \
	-lopencv_xobjdetect \
	-lopencv_objdetect \
	-lopencv_ml \
	-lopencv_xphoto \
	-lopencv_highgui \
	-lopencv_videoio \
	-lopencv_imgcodecs \
	-lopencv_photo \
	-lopencv_imgproc \
	-lopencv_core

$(obj).target/opencv.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/opencv.node: LIBS := $(LIBS)
$(obj).target/opencv.node: TOOLSET := $(TOOLSET)
$(obj).target/opencv.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/opencv.node
# Add target alias
.PHONY: opencv
opencv: $(builddir)/opencv.node

# Copy this to the executable output path.
$(builddir)/opencv.node: TOOLSET := $(TOOLSET)
$(builddir)/opencv.node: $(obj).target/opencv.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/opencv.node
# Short alias for building this executable.
.PHONY: opencv.node
opencv.node: $(obj).target/opencv.node $(builddir)/opencv.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/opencv.node

