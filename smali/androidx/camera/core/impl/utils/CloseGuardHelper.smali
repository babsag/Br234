.class public final Landroidx/camera/core/impl/utils/CloseGuardHelper;
.super Ljava/lang/Object;
.source "CloseGuardHelper.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/utils/CloseGuardHelper$c;,
        Landroidx/camera/core/impl/utils/CloseGuardHelper$a;,
        Landroidx/camera/core/impl/utils/CloseGuardHelper$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/camera/core/impl/utils/CloseGuardHelper$b;


# direct methods
.method private constructor <init>(Landroidx/camera/core/impl/utils/CloseGuardHelper$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/camera/core/impl/utils/CloseGuardHelper;->a:Landroidx/camera/core/impl/utils/CloseGuardHelper$b;

    return-void
.end method

.method public static create()Landroidx/camera/core/impl/utils/CloseGuardHelper;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroidx/camera/core/impl/utils/CloseGuardHelper;

    new-instance v1, Landroidx/camera/core/impl/utils/CloseGuardHelper$a;

    invoke-direct {v1}, Landroidx/camera/core/impl/utils/CloseGuardHelper$a;-><init>()V

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/utils/CloseGuardHelper;-><init>(Landroidx/camera/core/impl/utils/CloseGuardHelper$b;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroidx/camera/core/impl/utils/CloseGuardHelper;

    new-instance v1, Landroidx/camera/core/impl/utils/CloseGuardHelper$c;

    invoke-direct {v1}, Landroidx/camera/core/impl/utils/CloseGuardHelper$c;-><init>()V

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/utils/CloseGuardHelper;-><init>(Landroidx/camera/core/impl/utils/CloseGuardHelper$b;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/CloseGuardHelper;->a:Landroidx/camera/core/impl/utils/CloseGuardHelper$b;

    invoke-interface {v0}, Landroidx/camera/core/impl/utils/CloseGuardHelper$b;->close()V

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/CloseGuardHelper;->a:Landroidx/camera/core/impl/utils/CloseGuardHelper$b;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/utils/CloseGuardHelper$b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public warnIfOpen()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/utils/CloseGuardHelper;->a:Landroidx/camera/core/impl/utils/CloseGuardHelper$b;

    invoke-interface {v0}, Landroidx/camera/core/impl/utils/CloseGuardHelper$b;->a()V

    return-void
.end method
