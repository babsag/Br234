.class public Lbr/com/topaz/heartbeat/FaceAuthorization;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/heartbeat/FaceAuthorization$SendImageCallback;,
        Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;
    }
.end annotation


# static fields
.field public static final STATUS_FACEAUTHORIZATION_CONFIGURATION_DISABLED:I = 0x68

.field public static final STATUS_FACEAUTHORIZATION_INIT_FAILURE:I = 0x67

.field public static final STATUS_FACEAUTHORIZATION_INVALID_IMAGE_SIZE:I = 0x6c

.field public static final STATUS_INSTRUCTIONS_FINISH:I = 0x65

.field public static final STATUS_INSTRUCTION_FACE_NOT_CENTERED:I = 0x6f

.field public static final STATUS_INSTRUCTION_FACE_TOO_CLOSE:I = 0x6e

.field public static final STATUS_INSTRUCTION_FACE_TOO_FAR:I = 0x6d

.field public static final STATUS_INSTRUCTION_SEVERAL_FACES:I = 0x6b

.field public static final STATUS_INSTRUCTION_SEVERAL_FACES_INSIDE_MASK:I = 0x69

.field public static final STATUS_INSTRUCTION_SUCCESS:I = 0x64

.field public static final STATUS_INSTRUCTION_VALIDATION_OK:I = 0x6a

.field public static final STATUS_UNKNOWN_SENDIMAGE_ERROR:I = 0x1ba


# instance fields
.field private callback:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

.field private final faceProcessor:Lbr/com/topaz/heartbeat/face/FaceProcessor;

.field private faceStructure:Lbr/com/topaz/heartbeat/face/FaceStructure;

.field private final telemetryFacePresenter:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lbr/com/topaz/heartbeat/FaceAuthorization;-><init>(Landroid/content/Context;Ljava/util/HashMap;Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->callback:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    invoke-static {p1}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/g;->q()Lbr/com/topaz/heartbeat/face/FaceStructure;

    move-result-object v1

    iput-object v1, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->faceStructure:Lbr/com/topaz/heartbeat/face/FaceStructure;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-direct {v1}, Lbr/com/topaz/heartbeat/face/FaceStructure;-><init>()V

    iput-object v1, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->faceStructure:Lbr/com/topaz/heartbeat/face/FaceStructure;

    :goto_0
    new-instance v1, Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-direct {v1, v0}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;)V

    iget-object v2, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->faceStructure:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v2, p2}, Lbr/com/topaz/heartbeat/face/FaceStructure;->a(Ljava/util/HashMap;)V

    invoke-static {p1, v0, v1}, Lbr/com/topaz/q0/h;->a(Landroid/content/Context;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/utils/OFDException;)Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    move-result-object p2

    iput-object p2, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->telemetryFacePresenter:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    iget-object v0, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->faceStructure:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-static {p1, p3, p2, v0}, Lbr/com/topaz/heartbeat/face/a;->a(Landroid/content/Context;Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;Lbr/com/topaz/heartbeat/face/FaceStructure;)Lbr/com/topaz/heartbeat/face/FaceProcessor;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->faceProcessor:Lbr/com/topaz/heartbeat/face/FaceProcessor;

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/FaceAuthorization;->isFaceProcessorInvalid()Z

    return-void
.end method

.method private callFailureCallbackConfigurationDisabled()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->callback:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    if-eqz v0, :cond_0

    const/16 v1, 0x68

    invoke-interface {v0, v1}, Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;->onFailure(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->callback:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private isFaceProcessorInvalid()Z
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->faceProcessor:Lbr/com/topaz/heartbeat/face/FaceProcessor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->callback:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    if-eqz v1, :cond_1

    const/16 v2, 0x67

    invoke-interface {v1, v2}, Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;->onFailure(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->callback:Lbr/com/topaz/heartbeat/FaceAuthorization$FaceAuthorizationCallback;

    :cond_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "OFDHB:064"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public static prepare(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->faceStructure:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/face/FaceStructure;->x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/FaceAuthorization;->callFailureCallbackConfigurationDisabled()V

    return-void

    :cond_0
    invoke-direct {p0}, Lbr/com/topaz/heartbeat/FaceAuthorization;->isFaceProcessorInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->faceProcessor:Lbr/com/topaz/heartbeat/face/FaceProcessor;

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/heartbeat/face/FaceProcessor;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public checkImage(Landroid/media/Image;I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->faceStructure:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/face/FaceStructure;->x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/FaceAuthorization;->callFailureCallbackConfigurationDisabled()V

    return-void

    :cond_0
    invoke-direct {p0}, Lbr/com/topaz/heartbeat/FaceAuthorization;->isFaceProcessorInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->telemetryFacePresenter:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->c()V

    :cond_2
    iget-object v0, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->faceProcessor:Lbr/com/topaz/heartbeat/face/FaceProcessor;

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/heartbeat/face/FaceProcessor;->a(Landroid/media/Image;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public checkImage([BIII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->faceStructure:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/face/FaceStructure;->x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/FaceAuthorization;->callFailureCallbackConfigurationDisabled()V

    return-void

    :cond_0
    invoke-direct {p0}, Lbr/com/topaz/heartbeat/FaceAuthorization;->isFaceProcessorInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->telemetryFacePresenter:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->c()V

    :cond_2
    iget-object v0, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->faceProcessor:Lbr/com/topaz/heartbeat/face/FaceProcessor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lbr/com/topaz/heartbeat/face/FaceProcessor;->a([BIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getCapturedImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lbr/com/topaz/heartbeat/FaceAuthorization;->isFaceProcessorInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->faceProcessor:Lbr/com/topaz/heartbeat/face/FaceProcessor;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/face/FaceProcessor;->a()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isLastInstruction()Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lbr/com/topaz/heartbeat/FaceAuthorization;->isFaceProcessorInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->faceProcessor:Lbr/com/topaz/heartbeat/face/FaceProcessor;

    invoke-virtual {v1}, Lbr/com/topaz/heartbeat/face/FaceProcessor;->b()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public sendImage(Landroid/graphics/Bitmap;Ljava/lang/String;Lbr/com/topaz/heartbeat/FaceAuthorization$SendImageCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->faceStructure:Lbr/com/topaz/heartbeat/face/FaceStructure;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/face/FaceStructure;->x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/FaceAuthorization;->callFailureCallbackConfigurationDisabled()V

    return-void

    :cond_0
    invoke-direct {p0}, Lbr/com/topaz/heartbeat/FaceAuthorization;->isFaceProcessorInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->telemetryFacePresenter:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;->c()V

    :cond_2
    iget-object v0, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->faceProcessor:Lbr/com/topaz/heartbeat/face/FaceProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lbr/com/topaz/heartbeat/face/FaceProcessor;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lbr/com/topaz/heartbeat/FaceAuthorization$SendImageCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setMaskAttributes(FFFF)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/FaceAuthorization;->faceProcessor:Lbr/com/topaz/heartbeat/face/FaceProcessor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lbr/com/topaz/heartbeat/face/FaceProcessor;->a(FFFF)V

    return-void
.end method
