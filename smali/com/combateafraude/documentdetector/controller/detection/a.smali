.class public final synthetic Lcom/combateafraude/documentdetector/controller/detection/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/combateafraude/documentdetector/controller/detection/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/combateafraude/documentdetector/controller/detection/a;

    invoke-direct {v0}, Lcom/combateafraude/documentdetector/controller/detection/a;-><init>()V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/detection/a;->a:Lcom/combateafraude/documentdetector/controller/detection/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/combateafraude/documentdetector/controller/detection/Recognition;

    check-cast p2, Lcom/combateafraude/documentdetector/controller/detection/Recognition;

    invoke-static {p1, p2}, Lcom/combateafraude/documentdetector/controller/detection/ImageClassifier;->c(Lcom/combateafraude/documentdetector/controller/detection/Recognition;Lcom/combateafraude/documentdetector/controller/detection/Recognition;)I

    move-result p1

    return p1
.end method
