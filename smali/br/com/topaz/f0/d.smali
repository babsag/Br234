.class public Lbr/com/topaz/f0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/f0/d$c;,
        Lbr/com/topaz/f0/d$b;,
        Lbr/com/topaz/f0/d$a;
    }
.end annotation


# instance fields
.field private a:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;


# direct methods
.method public constructor <init>(Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/f0/d;->a:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lbr/com/topaz/f0/d$b;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lbr/com/topaz/f0/d$a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lbr/com/topaz/f0/d$b;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lbr/com/topaz/f0/d;->a:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lbr/com/topaz/f0/d$c;

    iget-object v9, v0, Lbr/com/topaz/f0/d;->a:Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;

    move-object v3, v1

    move-object v4, p1

    move-object/from16 v5, p5

    move-object v6, p4

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lbr/com/topaz/f0/d$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lbr/com/topaz/heartbeat/telemetry/TelemetryFacePresenter;Lbr/com/topaz/f0/d$b;)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    new-instance v1, Lbr/com/topaz/f0/d$c;

    move-object v3, v1

    move-object v4, p1

    move-object/from16 v5, p5

    move-object v6, p4

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lbr/com/topaz/f0/d$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lbr/com/topaz/f0/d$b;)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
