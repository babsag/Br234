.class public Lcom/combateafraude/documentdetector/input/QualitySettings;
.super Ljava/lang/Object;
.source "QualitySettings.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final RECOMMENDED_THRESHOLD:D = 1.8


# instance fields
.field private a:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "threshold"
    .end annotation
.end field


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/combateafraude/documentdetector/input/QualitySettings;->a:D

    return-void
.end method


# virtual methods
.method public getThreshold()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/documentdetector/input/QualitySettings;->a:D

    return-wide v0
.end method
