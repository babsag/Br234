.class public Lio/flutter/plugins/camera/media/MediaRecorderBuilder;
.super Ljava/lang/Object;
.source "MediaRecorderBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/camera/media/MediaRecorderBuilder$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/media/CamcorderProfile;

.field private final c:Lio/flutter/plugins/camera/media/MediaRecorderBuilder$a;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(Landroid/media/CamcorderProfile;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/media/CamcorderProfile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recordingProfile",
            "outputFilePath"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder$a;

    invoke-direct {v0}, Lio/flutter/plugins/camera/media/MediaRecorderBuilder$a;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;-><init>(Landroid/media/CamcorderProfile;Ljava/lang/String;Lio/flutter/plugins/camera/media/MediaRecorderBuilder$a;)V

    return-void
.end method

.method constructor <init>(Landroid/media/CamcorderProfile;Ljava/lang/String;Lio/flutter/plugins/camera/media/MediaRecorderBuilder$a;)V
    .locals 0
    .param p1    # Landroid/media/CamcorderProfile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recordingProfile",
            "outputFilePath",
            "helper"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->a:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->b:Landroid/media/CamcorderProfile;

    .line 5
    iput-object p3, p0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->c:Lio/flutter/plugins/camera/media/MediaRecorderBuilder$a;

    return-void
.end method


# virtual methods
.method public build()Landroid/media/MediaRecorder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->c:Lio/flutter/plugins/camera/media/MediaRecorderBuilder$a;

    invoke-virtual {v0}, Lio/flutter/plugins/camera/media/MediaRecorderBuilder$a;->a()Landroid/media/MediaRecorder;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_0
    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 4
    iget-object v1, p0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->b:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 5
    iget-boolean v1, p0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->d:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->b:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 7
    iget-object v1, p0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->b:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 8
    iget-object v1, p0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->b:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 9
    :cond_1
    iget-object v1, p0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->b:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 10
    iget-object v1, p0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->b:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 11
    iget-object v1, p0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->b:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 12
    iget-object v1, p0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->b:Landroid/media/CamcorderProfile;

    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 13
    iget-object v1, p0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 14
    iget v1, p0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->e:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 15
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    return-object v0
.end method

.method public setEnableAudio(Z)Lio/flutter/plugins/camera/media/MediaRecorderBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableAudio"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->d:Z

    return-object p0
.end method

.method public setMediaOrientation(I)Lio/flutter/plugins/camera/media/MediaRecorderBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 1
    iput p1, p0, Lio/flutter/plugins/camera/media/MediaRecorderBuilder;->e:I

    return-object p0
.end method
