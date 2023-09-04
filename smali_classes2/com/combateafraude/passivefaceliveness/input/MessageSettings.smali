.class public Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
.super Ljava/lang/Object;
.source "MessageSettings.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private captureProcessingErrorMessage:Ljava/lang/String;

.field private captureProcessingErrorMessageResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private eyesClosedMessage:Ljava/lang/String;

.field private eyesClosedResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private faceNotFittedMessage:Ljava/lang/String;

.field private faceNotFittedResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private faceNotFoundMessage:Ljava/lang/String;

.field private faceNotFoundResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private faceTooCloseMessage:Ljava/lang/String;

.field private faceTooCloseResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private faceTooFarMessage:Ljava/lang/String;

.field private faceTooFarResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private holdItMessage:Ljava/lang/String;

.field private holdItResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private invalidFaceMessage:Ljava/lang/String;

.field private invalidFaceResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private multipleFaceDetectedMessage:Ljava/lang/String;

.field private multipleFaceDetectedResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private notCenterXMessage:Ljava/lang/String;

.field private notCenterXResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private notCenterYMessage:Ljava/lang/String;

.field private notCenterYResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private notCenterZMessage:Ljava/lang/String;

.field private notCenterZResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private sensorLuminosityMessage:Ljava/lang/String;

.field sensorLuminosityMessageResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private sensorOrientationMessage:Ljava/lang/String;

.field sensorOrientationMessageResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private sensorStabilityMessage:Ljava/lang/String;

.field sensorStabilityMessageResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private stepName:Ljava/lang/String;

.field private stepNameResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private verifyingLivenessMessage:Ljava/lang/String;

.field private verifyingLivenessResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private waitMessage:Ljava/lang/String;

.field private waitMessageResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->initializeStringResources()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->stepName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->waitMessage:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceNotFoundMessage:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceTooFarMessage:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceTooCloseMessage:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceNotFittedMessage:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->multipleFaceDetectedMessage:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->verifyingLivenessMessage:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->holdItMessage:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->invalidFaceMessage:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->eyesClosedMessage:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->notCenterXMessage:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->notCenterYMessage:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->notCenterZMessage:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->sensorLuminosityMessage:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->sensorOrientationMessage:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->sensorStabilityMessage:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->captureProcessingErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->initializeStringResources()V

    move-object v1, p1

    .line 23
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->stepName:Ljava/lang/String;

    move-object v1, p2

    .line 24
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->waitMessage:Ljava/lang/String;

    move-object v1, p3

    .line 25
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceNotFoundMessage:Ljava/lang/String;

    move-object v1, p4

    .line 26
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceTooFarMessage:Ljava/lang/String;

    move-object v1, p5

    .line 27
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceTooCloseMessage:Ljava/lang/String;

    move-object v1, p6

    .line 28
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceNotFittedMessage:Ljava/lang/String;

    move-object v1, p7

    .line 29
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->multipleFaceDetectedMessage:Ljava/lang/String;

    move-object v1, p8

    .line 30
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->verifyingLivenessMessage:Ljava/lang/String;

    move-object v1, p9

    .line 31
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->holdItMessage:Ljava/lang/String;

    move-object v1, p10

    .line 32
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->invalidFaceMessage:Ljava/lang/String;

    move-object v1, p11

    .line 33
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->eyesClosedMessage:Ljava/lang/String;

    move-object v1, p12

    .line 34
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->notCenterXMessage:Ljava/lang/String;

    move-object v1, p13

    .line 35
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->notCenterYMessage:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 36
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->notCenterZMessage:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 37
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->sensorLuminosityMessage:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 38
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->sensorOrientationMessage:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 39
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->sensorStabilityMessage:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 40
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->captureProcessingErrorMessage:Ljava/lang/String;

    return-void
.end method

.method private initializeStringResources()V
    .locals 1

    .line 1
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->face_register_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->stepNameResourceId:Ljava/lang/Integer;

    .line 2
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->waiting_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->waitMessageResourceId:Ljava/lang/Integer;

    .line 3
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->face_not_found_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceNotFoundResourceId:Ljava/lang/Integer;

    .line 4
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->face_too_far_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceTooFarResourceId:Ljava/lang/Integer;

    .line 5
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->face_too_close_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceTooCloseResourceId:Ljava/lang/Integer;

    .line 6
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->fit_your_face_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceNotFittedResourceId:Ljava/lang/Integer;

    .line 7
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->more_than_one_face_message:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->multipleFaceDetectedResourceId:Ljava/lang/Integer;

    .line 8
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->verifying_liveness_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->verifyingLivenessResourceId:Ljava/lang/Integer;

    .line 9
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->hold_it_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->holdItResourceId:Ljava/lang/Integer;

    .line 10
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->invalid_face_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->invalidFaceResourceId:Ljava/lang/Integer;

    .line 11
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->eyes_closed:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->eyesClosedResourceId:Ljava/lang/Integer;

    .line 12
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->not_center_x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->notCenterXResourceId:Ljava/lang/Integer;

    .line 13
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->not_center_y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->notCenterYResourceId:Ljava/lang/Integer;

    .line 14
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->not_center_z:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->notCenterZResourceId:Ljava/lang/Integer;

    .line 15
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->orientation_sensor_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->sensorOrientationMessageResourceId:Ljava/lang/Integer;

    .line 16
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->sensor_light_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->sensorLuminosityMessageResourceId:Ljava/lang/Integer;

    .line 17
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->sensor_unstable_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->sensorStabilityMessageResourceId:Ljava/lang/Integer;

    .line 18
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->capture_processing_error_message:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->captureProcessingErrorMessageResourceId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public geSensorOrientationMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->sensorOrientationMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->sensorOrientationMessageResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCaptureProcessingErrorMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->captureProcessingErrorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->captureProcessingErrorMessageResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEyesClosedMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->eyesClosedMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->eyesClosedResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFaceNotFittedMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceNotFittedMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceNotFittedResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFaceNotFoundMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceNotFoundMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceNotFoundResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFaceTooCloseMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceTooCloseMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceTooCloseResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFaceTooFarMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceTooFarMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceTooFarResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getHoldItMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->holdItMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->holdItResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getInvalidFaceMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->invalidFaceMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->invalidFaceResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMultipleFaceDetectedMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->multipleFaceDetectedMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->multipleFaceDetectedResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNotCenterXMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->notCenterXMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->notCenterXResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNotCenterYMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->notCenterYMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->notCenterYResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNotCenterZMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->notCenterZMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->notCenterZResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSensorLuminosityMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->sensorLuminosityMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->sensorLuminosityMessageResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSensorStabilityMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->sensorStabilityMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->sensorStabilityMessageResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getStepName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->stepName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->stepNameResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getVerifyingLivenessMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->verifyingLivenessMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->verifyingLivenessResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getWaitMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->waitMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->waitMessageResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setCaptureProcessingErrorMessage(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->captureProcessingErrorMessage:Ljava/lang/String;

    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->captureProcessingErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setEyesClosedMessage(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->eyesClosedResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setFaceNotFittedMessage(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceNotFittedResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setFaceNotFoundMessage(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceNotFoundResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setFaceTooCloseMessage(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceTooCloseResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setFaceTooFarMessage(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->faceTooFarResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setHoldItMessage(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->holdItResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setInvalidFaceMessage(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->invalidFaceResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMultipleFaceDetectedMessage(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->multipleFaceDetectedResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setNotCenterXMessage(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->notCenterXResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setNotCenterYMessage(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->notCenterYResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setNotCenterZMessage(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->notCenterZResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSensorLuminosityMessage(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->sensorLuminosityMessageResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSensorOrientationMessage(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->sensorOrientationMessageResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSensorStabilityMessage(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->sensorStabilityMessageResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setStepName(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->stepNameResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setVerifyingLivenessMessage(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->verifyingLivenessResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setWaitMessage(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->waitMessageResourceId:Ljava/lang/Integer;

    return-object p0
.end method
