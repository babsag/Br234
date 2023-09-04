.class final enum Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;
.super Ljava/lang/Enum;
.source "DocumentDetectorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

.field public static final enum b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

.field public static final enum c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    const-string v1, "VERIFYING_TOKEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;->a:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    new-instance v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;->b:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    new-instance v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    const-string v1, "WAIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;->c:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
