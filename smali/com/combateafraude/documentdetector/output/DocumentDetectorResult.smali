.class public Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;
.super Ljava/lang/Object;
.source "DocumentDetectorResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final LENS_FACING_BACK:I = 0x1

.field public static final LENS_FACING_FRONT:I = 0x0

.field public static final PARAMETER_NAME:Ljava/lang/String; = "DocumentDetectorResult"


# instance fields
.field private a:[Lcom/combateafraude/documentdetector/output/Capture;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "captures"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackingId"
    .end annotation
.end field

.field private d:Lcom/combateafraude/documentdetector/output/failure/SDKFailure;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sdkFailure"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [Lcom/combateafraude/documentdetector/output/Capture;

    iput-object p1, p0, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->a:[Lcom/combateafraude/documentdetector/output/Capture;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->c:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->d:Lcom/combateafraude/documentdetector/output/failure/SDKFailure;

    return-void
.end method

.method public constructor <init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->a:[Lcom/combateafraude/documentdetector/output/Capture;

    .line 7
    iput-object p1, p0, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->d:Lcom/combateafraude/documentdetector/output/failure/SDKFailure;

    return-void
.end method


# virtual methods
.method public getCaptures()[Lcom/combateafraude/documentdetector/output/Capture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->a:[Lcom/combateafraude/documentdetector/output/Capture;

    return-object v0
.end method

.method public getSdkFailure()Lcom/combateafraude/documentdetector/output/failure/SDKFailure;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->d:Lcom/combateafraude/documentdetector/output/failure/SDKFailure;

    return-object v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setSdkFailure(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->d:Lcom/combateafraude/documentdetector/output/failure/SDKFailure;

    return-void
.end method

.method public setTrackingId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->c:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->b:Ljava/lang/String;

    return-void
.end method

.method public wasSuccessful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;->d:Lcom/combateafraude/documentdetector/output/failure/SDKFailure;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
