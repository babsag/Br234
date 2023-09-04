.class final Landroidx/camera/core/impl/UseCaseAttachState$b;
.super Ljava/lang/Object;
.source "UseCaseAttachState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/UseCaseAttachState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/camera/core/impl/SessionConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Landroidx/camera/core/impl/UseCaseConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/UseCaseConfig;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/SessionConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/UseCaseConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/SessionConfig;",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/camera/core/impl/UseCaseAttachState$b;->c:Z

    .line 3
    iput-boolean v0, p0, Landroidx/camera/core/impl/UseCaseAttachState$b;->d:Z

    .line 4
    iput-object p1, p0, Landroidx/camera/core/impl/UseCaseAttachState$b;->a:Landroidx/camera/core/impl/SessionConfig;

    .line 5
    iput-object p2, p0, Landroidx/camera/core/impl/UseCaseAttachState$b;->b:Landroidx/camera/core/impl/UseCaseConfig;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/impl/UseCaseAttachState$b;->d:Z

    return v0
.end method

.method b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/impl/UseCaseAttachState$b;->c:Z

    return v0
.end method

.method c()Landroidx/camera/core/impl/SessionConfig;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/UseCaseAttachState$b;->a:Landroidx/camera/core/impl/SessionConfig;

    return-object v0
.end method

.method d()Landroidx/camera/core/impl/UseCaseConfig;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/UseCaseAttachState$b;->b:Landroidx/camera/core/impl/UseCaseConfig;

    return-object v0
.end method

.method e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/camera/core/impl/UseCaseAttachState$b;->d:Z

    return-void
.end method

.method f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/camera/core/impl/UseCaseAttachState$b;->c:Z

    return-void
.end method
