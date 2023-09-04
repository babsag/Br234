.class public final synthetic Landroidx/camera/core/impl/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/CameraConfigProvider;


# static fields
.field public static final synthetic a:Landroidx/camera/core/impl/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/impl/a;

    invoke-direct {v0}, Landroidx/camera/core/impl/a;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/a;->a:Landroidx/camera/core/impl/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConfig(Landroidx/camera/core/CameraInfo;Landroid/content/Context;)Landroidx/camera/core/impl/CameraConfig;
    .locals 0

    invoke-static {p1, p2}, Landroidx/camera/core/impl/k0;->a(Landroidx/camera/core/CameraInfo;Landroid/content/Context;)Landroidx/camera/core/impl/CameraConfig;

    const/4 p1, 0x0

    return-object p1
.end method
