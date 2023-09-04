.class Lcom/google/firebase/crashlytics/internal/common/h$c;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/h;->C(Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

.field final synthetic b:Lcom/google/firebase/crashlytics/internal/common/h;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/h;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/h$c;->b:Lcom/google/firebase/crashlytics/internal/common/h;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/h$c;->a:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$c;->b:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/h;->t(Lcom/google/firebase/crashlytics/internal/common/h;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    const-string v2, "Tried to cache user data while no session was open."

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/h$c;->b:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/h;->w(Lcom/google/firebase/crashlytics/internal/common/h;)Lcom/google/firebase/crashlytics/internal/common/s;

    move-result-object v2

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/h;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/common/s;->l(Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/n;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/h$c;->b:Lcom/google/firebase/crashlytics/internal/common/h;

    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/internal/common/h;->d0()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/firebase/crashlytics/internal/common/n;-><init>(Ljava/io/File;)V

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/h$c;->a:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/crashlytics/internal/common/n;->i(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/h$c;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
