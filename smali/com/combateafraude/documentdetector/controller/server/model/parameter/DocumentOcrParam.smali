.class public Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParam;
.super Ljava/lang/Object;
.source "DocumentOcrParam.java"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private b:Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParamImage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "images"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParamImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParam;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParam;->b:Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParamImage;

    return-void
.end method
