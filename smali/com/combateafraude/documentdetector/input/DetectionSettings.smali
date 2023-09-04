.class public Lcom/combateafraude/documentdetector/input/DetectionSettings;
.super Ljava/lang/Object;
.source "DetectionSettings.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final RECOMMENDED_THRESHOLD:D = 0.91


# instance fields
.field private a:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "threshold"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "consecutiveFrames"
    .end annotation
.end field


# direct methods
.method public constructor <init>(DI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/combateafraude/documentdetector/input/DetectionSettings;->a:D

    .line 3
    iput p3, p0, Lcom/combateafraude/documentdetector/input/DetectionSettings;->b:I

    return-void
.end method


# virtual methods
.method public getConsecutiveFrames()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/DetectionSettings;->b:I

    return v0
.end method

.method public getThreshold()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/documentdetector/input/DetectionSettings;->a:D

    return-wide v0
.end method
