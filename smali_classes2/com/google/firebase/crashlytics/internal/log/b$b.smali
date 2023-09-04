.class Lcom/google/firebase/crashlytics/internal/log/b$b;
.super Ljava/lang/Object;
.source "QueueFileLogStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/log/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public final a:[B

.field public final b:I

.field final synthetic c:Lcom/google/firebase/crashlytics/internal/log/b;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/log/b;[BI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/b$b;->c:Lcom/google/firebase/crashlytics/internal/log/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/log/b$b;->a:[B

    .line 3
    iput p3, p0, Lcom/google/firebase/crashlytics/internal/log/b$b;->b:I

    return-void
.end method
