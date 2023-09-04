.class final Lcom/google/firebase/messaging/b0$b;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/messaging/b0;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/b0;)V
    .locals 0
    .param p1    # Lcom/google/firebase/messaging/b0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/messaging/b0;

    iput-object p1, p0, Lcom/google/firebase/messaging/b0$b;->a:Lcom/google/firebase/messaging/b0;

    return-void
.end method


# virtual methods
.method a()Lcom/google/firebase/messaging/b0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/b0$b;->a:Lcom/google/firebase/messaging/b0;

    return-object v0
.end method
