.class public final synthetic Landroidx/camera/core/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic a:Landroidx/camera/core/w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/w;

    invoke-direct {v0}, Landroidx/camera/core/w;-><init>()V

    sput-object v0, Landroidx/camera/core/w;->a:Landroidx/camera/core/w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Landroidx/camera/core/ImageCapture;->E(Ljava/util/List;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
