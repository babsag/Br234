.class Lcom/combateafraude/documentdetector/controller/server/model/parameter/a;
.super Ljava/lang/Object;
.source "TransactionParam.java"


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/a;->a:Ljava/lang/String;

    return-void
.end method
