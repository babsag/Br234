.class public final synthetic Lcom/combateafraude/documentdetector/controller/server/utils/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic a:Lcom/combateafraude/documentdetector/controller/server/utils/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/combateafraude/documentdetector/controller/server/utils/a;

    invoke-direct {v0}, Lcom/combateafraude/documentdetector/controller/server/utils/a;-><init>()V

    sput-object v0, Lcom/combateafraude/documentdetector/controller/server/utils/a;->a:Lcom/combateafraude/documentdetector/controller/server/utils/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Lcom/combateafraude/documentdetector/controller/server/utils/UploadHelper;->e(Ljava/lang/Runnable;)V

    return-void
.end method
