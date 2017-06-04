function removeDuplicate(xs) {
  return xs.reduce((a, b) => {
    let result = [];
    if (a == b) {
      return;
    } else {
      result.concat(a);
    }
    return result;
  }, []);
}
