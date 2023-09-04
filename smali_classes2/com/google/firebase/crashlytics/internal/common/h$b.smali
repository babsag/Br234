.class Lcom/google/firebase/crashlytics/internal/common/h$b;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/h;->O0(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Ljava/lang/Thread;

.field final synthetic d:Lcom/google/firebase/crashlytics/internal/common/h;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/h;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/h$b;->d:Lcom/google/firebase/crashlytics/internal/common/h;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/h$b;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/h$b;->b:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/h$b;->c:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$b;->d:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/h;->m0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$b;->a:Ljava/util/Date;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/h;->s(Ljava/util/Date;)J

    move-result-wide v7

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$b;->d:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/h;->t(Lcom/google/firebase/crashlytics/internal/common/h;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    const-string v1, "Tried to write a non-fatal exception while no session was open."

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$b;->d:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/h;->w(Lcom/google/firebase/crashlytics/internal/common/h;)Lcom/google/firebase/crashlytics/internal/common/s;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/h$b;->b:Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/h$b;->c:Ljava/lang/Thread;

    .line 7
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/h;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-wide v5, v7

    .line 8
    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/crashlytics/internal/common/s;->k(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V

    .line 9
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$b;->d:Lcom/google/firebase/crashlytics/internal/common/h;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/h$b;->c:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/h$b;->b:Ljava/lang/Throwable;

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/crashlytics/internal/common/h;->o(Lcom/google/firebase/crashlytics/internal/common/h;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method
