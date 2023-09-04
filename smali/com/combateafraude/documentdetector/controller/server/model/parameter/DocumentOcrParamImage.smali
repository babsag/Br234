.class public Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParamImage;
.super Ljava/lang/Object;
.source "DocumentOcrParamImage.java"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "front"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "back"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParamImage;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParamImage;->b:Ljava/lang/String;

    return-void
.end method
