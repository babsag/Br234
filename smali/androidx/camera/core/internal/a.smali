.class public final synthetic Landroidx/camera/core/internal/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/Preview$SurfaceProvider;


# static fields
.field public static final synthetic a:Landroidx/camera/core/internal/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/internal/a;

    invoke-direct {v0}, Landroidx/camera/core/internal/a;-><init>()V

    sput-object v0, Landroidx/camera/core/internal/a;->a:Landroidx/camera/core/internal/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    invoke-static {p1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->o(Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method
