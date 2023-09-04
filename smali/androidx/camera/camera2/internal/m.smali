.class public final synthetic Landroidx/camera/camera2/internal/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Landroidx/camera/camera2/internal/m;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/internal/m;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/m;-><init>()V

    sput-object v0, Landroidx/camera/camera2/internal/m;->a:Landroidx/camera/camera2/internal/m;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->v()V

    return-void
.end method
