# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := test_nativemat
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=test_nativemat' \
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
	-O0

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
	-I$(srcdir)/../nan \
	-I$(srcdir)/inc

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=test_nativemat' \
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
	-I$(srcdir)/../nan \
	-I$(srcdir)/inc

OBJS := \
	$(obj).target/$(TARGET)/test/nativemat.o

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
	-m64

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

$(obj).target/test_nativemat.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/test_nativemat.node: LIBS := $(LIBS)
$(obj).target/test_nativemat.node: TOOLSET := $(TOOLSET)
$(obj).target/test_nativemat.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/test_nativemat.node
# Add target alias
.PHONY: test_nativemat
test_nativemat: $(builddir)/test_nativemat.node

# Copy this to the executable output path.
$(builddir)/test_nativemat.node: TOOLSET := $(TOOLSET)
$(builddir)/test_nativemat.node: $(obj).target/test_nativemat.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/test_nativemat.node
# Short alias for building this executable.
.PHONY: test_nativemat.node
test_nativemat.node: $(obj).target/test_nativemat.node $(builddir)/test_nativemat.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/test_nativemat.node

