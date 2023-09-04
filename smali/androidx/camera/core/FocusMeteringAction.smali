.class public final Landroidx/camera/core/FocusMeteringAction;
.super Ljava/lang/Object;
.source "FocusMeteringAction.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/FocusMeteringAction$Builder;,
        Landroidx/camera/core/FocusMeteringAction$MeteringMode;
    }
.end annotation


# static fields
.field public static final FLAG_AE:I = 0x2

.field public static final FLAG_AF:I = 0x1

.field public static final FLAG_AWB:I = 0x4


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/MeteringPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/MeteringPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/MeteringPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J


# direct methods
.method constructor <init>(Landroidx/camera/core/FocusMeteringAction$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Landroidx/camera/core/FocusMeteringAction$Builder;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/FocusMeteringAction;->a:Ljava/util/List;

    .line 3
    iget-object v0, p1, Landroidx/camera/core/FocusMeteringAction$Builder;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/FocusMeteringAction;->b:Ljava/util/List;

    .line 4
    iget-object v0, p1, Landroidx/camera/core/FocusMeteringAction$Builder;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/FocusMeteringAction;->c:Ljava/util/List;

    .line 5
    iget-wide v0, p1, Landroidx/camera/core/FocusMeteringAction$Builder;->d:J

    iput-wide v0, p0, Landroidx/camera/core/FocusMeteringAction;->d:J

    return-void
.end method


# virtual methods
.method public getAutoCancelDurationInMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/camera/core/FocusMeteringAction;->d:J

    return-wide v0
.end method

.method public getMeteringPointsAe()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/MeteringPoint;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/FocusMeteringAction;->b:Ljava/util/List;

    return-object v0
.end method

.method public getMeteringPointsAf()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/MeteringPoint;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/FocusMeteringAction;->a:Ljava/util/List;

    return-object v0
.end method

.method public getMeteringPointsAwb()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/MeteringPoint;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/FocusMeteringAction;->c:Ljava/util/List;

    return-object v0
.end method

.method public isAutoCancelEnabled()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/camera/core/FocusMeteringAction;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
