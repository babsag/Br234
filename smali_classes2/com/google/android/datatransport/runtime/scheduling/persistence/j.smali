.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/j;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$b;


# static fields
.field private static final a:Lcom/google/android/datatransport/runtime/scheduling/persistence/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/j;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/j;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/j;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$b;
    .locals 1

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/j;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/j;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->w(Landroid/database/Cursor;)[B

    move-result-object p1

    return-object p1
.end method
