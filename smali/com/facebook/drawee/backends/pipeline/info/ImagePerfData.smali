.class public Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;
.super Ljava/lang/Object;
.source "ImagePerfData.java"


# static fields
.field public static final UNSET:I = -0x1


# instance fields
.field private final mCallerContext:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mComponentTag:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mControllerCancelTimeMs:J

.field private final mControllerFailureTimeMs:J

.field private final mControllerFinalImageSetTimeMs:J

.field private final mControllerId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mControllerIntermediateImageSetTimeMs:J

.field private final mControllerSubmitTimeMs:J

.field private final mImageInfo:Lcom/facebook/imagepipeline/image/ImageInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mImageOrigin:I

.field private final mImageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mImageRequestEndTimeMs:J

.field private final mImageRequestStartTimeMs:J

.field private final mInvisibilityEventTimeMs:J

.field private final mIsPrefetch:Z

.field private final mOnScreenHeightPx:I

.field private final mOnScreenWidthPx:I

.field private final mRequestId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUltimateProducerName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mVisibilityEventTimeMs:J

.field private final mVisibilityState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/image/ImageInfo;JJJJJJJILjava/lang/String;ZIIIJJLjava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/imagepipeline/image/ImageInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p30    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 68
    iput-object v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mControllerId:Ljava/lang/String;

    move-object v1, p2

    .line 69
    iput-object v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mRequestId:Ljava/lang/String;

    move-object v1, p3

    .line 70
    iput-object v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mImageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    move-object v1, p4

    .line 71
    iput-object v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mCallerContext:Ljava/lang/Object;

    move-object v1, p5

    .line 72
    iput-object v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mImageInfo:Lcom/facebook/imagepipeline/image/ImageInfo;

    move-wide v1, p6

    .line 73
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mControllerSubmitTimeMs:J

    move-wide v1, p8

    .line 74
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mControllerIntermediateImageSetTimeMs:J

    move-wide v1, p10

    .line 75
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mControllerFinalImageSetTimeMs:J

    move-wide v1, p12

    .line 76
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mControllerFailureTimeMs:J

    move-wide/from16 v1, p14

    .line 77
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mControllerCancelTimeMs:J

    move-wide/from16 v1, p16

    .line 78
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mImageRequestStartTimeMs:J

    move-wide/from16 v1, p18

    .line 79
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mImageRequestEndTimeMs:J

    move/from16 v1, p20

    .line 80
    iput v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mImageOrigin:I

    move-object/from16 v1, p21

    .line 81
    iput-object v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mUltimateProducerName:Ljava/lang/String;

    move/from16 v1, p22

    .line 82
    iput-boolean v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mIsPrefetch:Z

    move/from16 v1, p23

    .line 83
    iput v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mOnScreenWidthPx:I

    move/from16 v1, p24

    .line 84
    iput v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mOnScreenHeightPx:I

    move/from16 v1, p25

    .line 85
    iput v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mVisibilityState:I

    move-wide/from16 v1, p26

    .line 86
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mVisibilityEventTimeMs:J

    move-wide/from16 v1, p28

    .line 87
    iput-wide v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mInvisibilityEventTimeMs:J

    move-object/from16 v1, p30

    .line 88
    iput-object v1, v0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mComponentTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createDebugString()Ljava/lang/String;
    .locals 4

    .line 195
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mControllerId:Ljava/lang/String;

    const-string v2, "controller ID"

    .line 196
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mRequestId:Ljava/lang/String;

    const-string v2, "request ID"

    .line 197
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mControllerSubmitTimeMs:J

    const-string v3, "controller submit"

    .line 198
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mControllerFinalImageSetTimeMs:J

    const-string v3, "controller final image"

    .line 199
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mControllerFailureTimeMs:J

    const-string v3, "controller failure"

    .line 200
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mControllerCancelTimeMs:J

    const-string v3, "controller cancel"

    .line 201
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mImageRequestStartTimeMs:J

    const-string v3, "start time"

    .line 202
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mImageRequestEndTimeMs:J

    const-string v3, "end time"

    .line 203
    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mImageOrigin:I

    .line 204
    invoke-static {v1}, Lcom/facebook/drawee/backends/pipeline/info/ImageOriginUtils;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "origin"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mUltimateProducerName:Ljava/lang/String;

    const-string v2, "ultimateProducerName"

    .line 205
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mIsPrefetch:Z

    const-string v2, "prefetch"

    .line 206
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mCallerContext:Ljava/lang/Object;

    const-string v2, "caller context"

    .line 207
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mImageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    const-string v2, "image request"

    .line 208
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mImageInfo:Lcom/facebook/imagepipeline/image/ImageInfo;

    const-string v2, "image info"

    .line 209
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mOnScreenWidthPx:I

    const-string v2, "on-screen width"

    .line 210
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mOnScreenHeightPx:I

    const-string v2, "on-screen height"

    .line 211
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mVisibilityState:I

    const-string v2, "visibility state"

    .line 212
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mComponentTag:Ljava/lang/String;

    const-string v2, "component tag"

    .line 213
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallerContext()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mCallerContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getComponentTag()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mComponentTag:Ljava/lang/String;

    return-object v0
.end method

.method public getControllerFailureTimeMs()J
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mControllerFailureTimeMs:J

    return-wide v0
.end method

.method public getControllerFinalImageSetTimeMs()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mControllerFinalImageSetTimeMs:J

    return-wide v0
.end method

.method public getControllerId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mControllerId:Ljava/lang/String;

    return-object v0
.end method

.method public getControllerIntermediateImageSetTimeMs()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mControllerIntermediateImageSetTimeMs:J

    return-wide v0
.end method

.method public getControllerSubmitTimeMs()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mControllerSubmitTimeMs:J

    return-wide v0
.end method

.method public getFinalImageLoadTimeMs()J
    .locals 5

    .line 162
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->getImageRequestEndTimeMs()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->getImageRequestStartTimeMs()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->getImageRequestEndTimeMs()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->getImageRequestStartTimeMs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public getImageInfo()Lcom/facebook/imagepipeline/image/ImageInfo;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mImageInfo:Lcom/facebook/imagepipeline/image/ImageInfo;

    return-object v0
.end method

.method public getImageOrigin()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mImageOrigin:I

    return v0
.end method

.method public getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mImageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    return-object v0
.end method

.method public getImageRequestEndTimeMs()J
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mImageRequestEndTimeMs:J

    return-wide v0
.end method

.method public getImageRequestStartTimeMs()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mImageRequestStartTimeMs:J

    return-wide v0
.end method

.method public getIntermediateImageLoadTimeMs()J
    .locals 5

    .line 170
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->getControllerIntermediateImageSetTimeMs()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->getControllerSubmitTimeMs()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->getControllerIntermediateImageSetTimeMs()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->getControllerSubmitTimeMs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public getInvisibilityEventTimeMs()J
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mInvisibilityEventTimeMs:J

    return-wide v0
.end method

.method public getOnScreenHeightPx()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mOnScreenHeightPx:I

    return v0
.end method

.method public getOnScreenWidthPx()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mOnScreenWidthPx:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getUltimateProducerName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mUltimateProducerName:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibilityEventTimeMs()J
    .locals 2

    .line 182
    iget-wide v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mVisibilityEventTimeMs:J

    return-wide v0
.end method

.method public getVisibilityState()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mVisibilityState:I

    return v0
.end method

.method public isPrefetch()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfData;->mIsPrefetch:Z

    return v0
.end method
