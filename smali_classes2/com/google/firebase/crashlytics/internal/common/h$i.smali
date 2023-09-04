.class Lcom/google/firebase/crashlytics/internal/common/h$i;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/common/h$y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/h;->P0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcom/google/firebase/crashlytics/internal/common/h;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/h$i;->f:Lcom/google/firebase/crashlytics/internal/common/h;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/h$i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/h$i;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/h$i;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/h$i;->d:Ljava/lang/String;

    iput p6, p0, Lcom/google/firebase/crashlytics/internal/common/h$i;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/h$i;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/h$i;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/h$i;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/h$i;->d:Ljava/lang/String;

    iget v5, p0, Lcom/google/firebase/crashlytics/internal/common/h$i;->e:I

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/h$i;->f:Lcom/google/firebase/crashlytics/internal/common/h;

    .line 2
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/h;->q(Lcom/google/firebase/crashlytics/internal/common/h;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    .line 3
    invoke-static/range {v0 .. v6}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->writeSessionApp(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
